	.equ SCREEN_WIDTH, 		640
	.equ SCREEN_HEIGH, 		480
	.equ BITS_PER_PIXEL,  	32

    .equ MARIO_WIDTH,    85
    .equ MARIO_HEIGHT,   85
    .equ MARIO_HEAD_OFF, 80

	.equ GPIO_BASE,      0x3f200000
	.equ GPIO_GPFSEL0,   0x00
	.equ GPIO_GPLEV0,    0x34

	.globl main

main:
	// x0 contiene la direccion base del framebuffer
 	mov x20, x0	// Guarda la dirección base del framebuffer en x20

	// ----------------------------------------------------
    // COLORES (ARGB)
    // ---------------------------------------------------

    // Celeste (Cielo)
    movz x10, 0xABFF, lsl 0
    movk x10, 0xFF55, lsl 16    //0XFF55ABFF
    mov  w10, w10

    // Verde (Tubo)
    movz x11, 0xCE21, lsl 0
    movk x11, 0xFF27, lsl 16     //0XFF27CE21
    mov  w11, w11
	
	// Verde claro (para brillo)
    movz x19, 0xFC43, lsl 0
    movk x19, 0xFF99, lsl 16
    mov  w19, w19

    // Verde Oscuro 
    movz x28, 0x8A33, lsl 0      
    movk x28, 0xFF00, lsl 16      
    mov w28, w28                  // 0xFF00B140

    // Marron (Bloques)
    movz x13, 0x4513, lsl 0
    movk x13, 0xFF8B, lsl 16
    mov  w13, w13

    // Negro (Bordes)
    movz x12, 0x0000, lsl 0
    movk x12, 0xFF00, lsl 16
    mov  w12, w12

    //Blanco (Nubes)
    movz x29, 0xFFFF, lsl 0
    movk x29, 0xFFFF, lsl 16
    mov w29,w29

    // ------------------------
    // Colores para Mario
    // ------------------------

    // Rojo (gorra y camisa)
    movz x14, 0x0000, lsl 0
    movk x14, 0xFFFF, lsl 16     // 0xFFFF0000
    mov  w14, w14             

    // Piel (cara y manos)
    movz x15, 0xC080, lsl 0
    movk x15, 0xFFFF, lsl 16     // 0xFFFFC080
    mov  w15, w15                

    // Marrón (pelo, bigote)
    movz x16, 0x2010, lsl 0
    movk x16, 0xFF30, lsl 16     // 0xFF302010
    mov  w16, w16                

    // Azul (overol)
    movz x17, 0x40C0, lsl 0
    movk x17, 0xFF00, lsl 16     // 0xFF0040C0     
    //#0000ff
    mov  w17, w17                

    // Amarillo (botones)
    movz x18, 0xFF00, lsl 0
    movk x18, 0xFFFF, lsl 16     // 0xFFFFFF00
    mov  w18, w18

    // --------------------------------------------------------------
    // FONDO CELESTE (80% superior)
    // ---------------------------------------------------------------
    mov x0, x20
    mov x1, #0              // y inicial
    mov x2, #0              // x inicial
    mov x3, #384            // alto (80% de 480)
    mov x4, #SCREEN_WIDTH   // ancho
    mov w5, w10             // color celeste
    bl draw_rect

    // -----------------------------------------------------------------
    // PISO DE BLOQUES MARRONES (20% inferior)
    // -----------------------------------------------------------------
    mov x0, x20
    mov x1, #384            // y inicial (80% superior de la pantalla)
    mov x2, #0              // x inicial
    mov x3, #96             // alto (20% de 480)
    mov x4, #SCREEN_WIDTH   // ancho
    mov w5, w13             // color marrón
    bl draw_rect

    //Dibuja todos los objetos
	bl draw_fondo           // Dibuja el arbusto y la montaña de fondo
    bl draw_Suelo           // Dibuja los detalles del Suelo
    bl draw_OdC2025         // Dibuja OdC2025
    bl draw_TuboVerde       // Dibuja el Tubo Verde
    bl draw_bloque          // Dibuja los Bloques en el aire
    bl draw_clouds          // Dibuja las Nubes

    // Guardar fondo horizontal completo en donde se mueve Mario
    //en y=300
    adr x27, buffer_fondo    // x27 = dirección del buffer
    mov x0, x20             // framebuffer origen
    mov x1, x27             // buffer destino
    mov x2, #300            // y = 300 (donde empieza el gorro de Mario)
    mov x3, #0              // x = 0 inicial
    mov x4, #MARIO_HEIGHT         // alto de Mario = 85
    mov x5, #SCREEN_WIDTH        // ancho toda la pantalla
    bl copiar_region


// Variables de posición  (inicialmente en x21 = y, x22 = x)
// Donde arranca Mario
mov x21, #380     // y inicial 
mov x22, #0       // x inicial
mov x24, #0       // Alternador de dibujo: 0 o 1


//-----------------------ANIMACION-----------------
bucle_animacion:

    // Borrar a Mario anterior (restaurar fondo desde buffer)
    mov x0, x27         // origen: buffer de fondo
    mov x1, x20         // destino: framebuffer
    sub x2, x21, #MARIO_HEAD_OFF     // y de Mario, cabeza
    mov x3, x23         // x anterior de Mario
    mov x4, #MARIO_HEIGHT   // alto de Mario
    mov x5, #MARIO_HEIGHT 
    bl copiar_region                             

    // Calcular nueva posición de Mario
    mov x23, x22        // Guardamos la posición anterior en X
    add x22, x22, #15   // Avanza Mario en píxeles
    cmp x22, #420       // Comprobamos si Mario llegó al borde
    b.le seguir

    // Guardar fondo horizontal completo en donde se mueve Mario
    //en y=100
    adr x27, buffer_fondo    // x27 = dirección del buffer
    mov x0, x20             // framebuffer origen
    mov x1, x27             // buffer destino
    mov x2, #90            // y = 90 
    mov x3, #250              // x = 300 inicial
    mov x4, #SCREEN_HEIGH
    mov x5, #SCREEN_WIDTH        // ancho toda la pantalla
    bl copiar_region

    // Mario llegó al final de su caminata
    // Mario quieto
    mov x0, x20     // framebuffer
    mov x1, x21     // y
    mov x2, x22     // x actual (final)
    bl draw_Mario

    // Delay 
    movz x0, 0x5000  
    movk x0, 0x0800, lsl 16
    bl delay_custom

    //Avanzamos con el salto y entrar al tubo
    bl mario_salta_en_tubo

seguir:
    // Dibuja a Mario en la nueva posición
    mov x0, x20         // Dirección base del framebuffer
    mov x1, x21         // Y de Mario
    mov x2, x22         // X de Mario
    cmp x24, #0         // Alterna entre las dos imágenes de Mario
    b.eq usar_dibujo1
usar_dibujo2:
    bl draw_MarioCaminando2
    mov x24, #0
    b fin_dibujo
usar_dibujo1:
    bl draw_MarioCaminando1
    mov x24, #1
fin_dibujo:

    // Delay para la animación 
    movz x0, 0x9400, lsl 0        // parte baja
    movk x0, 0x0200, lsl 16       // parte alta
    bl delay_custom

    b bucle_animacion

// ------------------------------------------
// Función: mario_salta_en_tubo
// Mario salta sobre el tubo (sube y luego cae sobre el tubo)
mario_salta_en_tubo:

    // Borrar Mario anterior
    mov x0, x27
    mov x1, x20
    mov x2, x23
    sub x2, x2, #85     // y cabeza
    mov x3, x24
    sub x3, x3, #5
    mov x4, #MARIO_HEIGHT
    mov x5, #MARIO_WIDTH  
    bl copiar_region

    // Subir en Y y avanzar en X
    mov x23, x21        // x23 guarda la posición anterior en Y
    mov x24, x22        // x24 guarda la posición anterior en X
    sub x21, x21, #10    // subir 8 px por frame
    add x22, x22, #3    // avanzar 

    // Mario llegó arriba del tubo 
    cmp x22, #480       // Comprobamos si Mario llegó al borde
    b.le seguir1

    //Mario cae en tubo
    bl mario_cae_en_tubo

    seguir1:
    // Dibujar Mario saltando
    mov x0, x20
    mov x1, x21
    mov x2, x22
    bl draw_MarioSaltando

    // Delay
    movz x0, 0x9000
    movk x0, 0x0100, lsl 16
    bl delay_custom

    b mario_salta_en_tubo

    ret

// ------------------------------------------
// Función: mario_cae_en_tubo
// Mario salta sobre el tubo (sube y luego cae sobre el tubo)
mario_cae_en_tubo:

    // Borrar Mario anterior
    mov x0, x27
    mov x1, x20
    mov x2, x23
    sub x2, x2, #80     // y cabeza
    mov x3, x24
    sub x3, x3, #5
    mov x4, #MARIO_HEIGHT
    mov x5, #MARIO_WIDTH  
    bl copiar_region

    // Bajar en Y y avanzar en X
    mov x23, x21        // x23 guarda la posición anterior en Y
    mov x24, x22        // x24 guarda la posición anterior en X
    add x21, x21, #6    // bajar 8 px por frame
    add x22, x22, #6    // avanzar 

    // Mario al tubo 
    cmp x22, #540       // Comprobamos si Mario llegó 
    b.le seguir3
    
    // Mario quieto
    mov x0, x20     // framebuffer
    mov x1, x21     // y
    mov x2, x22     // x actual (final)
    bl draw_Mario

    // Delay 
    movz x0, 0x4B40
    movk x0, 0x0002, lsl 16   
    bl delay_custom

    //Mario entra al tubo
    bl mario_entrada_tubo

    seguir3:
    // Dibujar Mario saltando
    mov x0, x20
    mov x1, x21
    mov x2, x22
    bl draw_MarioSaltando

    // Delay
    movz x0, 0x9000
    movk x0, 0x0100, lsl 16
    bl delay_custom

    b mario_cae_en_tubo

    ret

// ------------------------------------------
// Función: mario_entrada_tubo
// Mario entra al tubo lentamente
mario_entrada_tubo:

    // Borrar Mario anterior
    mov x0, x27
    mov x1, x20
    mov x2, x23
    sub x2, x2, #80
    mov x3, x22
    mov x4, #MARIO_HEIGHT
    mov x5, #MARIO_WIDTH  
    bl copiar_region

    // Bajar Mario en Y
    mov x23, x21        // Guardamos la posicion anterior
    add x21, x21, #6   // baja de a poco

    cmp x21, #430       // Comprobamos si Mario ya bajó
    b.le seguir2

    // Reiniciar posición
    mov x21, #380     
    mov x22, #0       
    mov x24, #0 
    bl bucle_animacion

seguir2:
    // Dibujar Mario
    mov x0, x20
    mov x1, x21
    mov x2, x22
    bl draw_Mario 

    // Delay
    movz x0, 0xA000
    movk x0, 0x0100, lsl 16
    bl delay_custom

    b mario_entrada_tubo

.fin_entrada:
    ret

// ------------------------------------------
// Función: delay_custom (espera artificial)
delay_custom:
    // x0 contiene el valor de delay
delay_loop_custom:
    subs x0, x0, #1
    b.ne delay_loop_custom
    ret

    // ------------------------------------------
// Función: copiar_region
// Copia una región rectangular de un buffer a otro
    // x0: origen (buffer o framebuffer)
    // x1: destino (framebuffer o buffer)
    // x2: y
    // x3: x
    // x4: alto
    // x5: ancho

copiar_region:
    mov x6, #0              // fila
.bucle_filas:
    cmp x6, x4              // si fila >= alto
    b.ge .fin_copia

    mov x7, #0              // columna
.bucle_columnas:
    cmp x7, x5              // si columna >= ancho
    b.ge .fin_col

    add x8, x2, x6               // y + fila
    add x9, x3, x7               // x + col
    mov x10, #SCREEN_WIDTH
    mul x8, x8, x10              // (y + fila) * SCREEN_WIDTH
    add x8, x8, x9               // + (x + col)
    lsl x8, x8, #2               // * 4 bytes por píxel

    ldr w10, [x0, x8]
    str w10, [x1, x8]

    add x7, x7, #1
    b .bucle_columnas

.fin_col:
    add x6, x6, #1
    b .bucle_filas

.fin_copia:
    ret


// ------------------------------------------
// Buffer para fondo de Mario
.bss
.align 4
buffer_fondo:
.skip 640 * 400 * 4    // toda la línea horizontal, 200 px de alto que es el fondo donde se mueve Mario
                        //640 de ancho * 400 de alto * 4 bytes por píxel
