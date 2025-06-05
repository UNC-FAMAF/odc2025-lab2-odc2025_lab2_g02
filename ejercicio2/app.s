	.equ SCREEN_WIDTH, 		640
	.equ SCREEN_HEIGH, 		480
	.equ BITS_PER_PIXEL,  	32

	.equ GPIO_BASE,      0x3f200000
	.equ GPIO_GPFSEL0,   0x00
	.equ GPIO_GPLEV0,    0x34

	.globl main

main:
	// x0 contiene la direccion base del framebuffer
 	mov x20, x0	// Guarda la dirección base del framebuffer en x20

	// -------------------------
    // COLORES (ARGB)
    // -------------------------

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
	
	// ------------------------
    // Colores para Goomba
    // ------------------------

	// Marrón (cabeza)
    movz x24, 0x5D2E, lsl 0
    movk x24, 0xFF8B, lsl 16     // 0XFF8B5D2E
    mov  w24, w24                

    // Marron claro (cuerpo)
    movz x25, 0xD486  , lsl 0
    movk x25, 0xFFE8, lsl 16     // 0xFFE8D486   
    mov  w25, w25             

    // Blanco (ojos)
    movz x26, 0xFFFF, lsl 0
    movk x26, 0xFFFF, lsl 16     // 0XFFFFFFFF
    mov  w26, w26
	

    // -------------------------
    // FONDO CELESTE (80% superior)
    // -------------------------
    mov x0, x20
    mov x1, #0              // y inicial
    mov x2, #0              // x inicial
    mov x3, #384            // alto (80% de 480)
    mov x4, #SCREEN_WIDTH   // ancho
    mov w5, w10             // color celeste
    bl draw_rect

    // -------------------------
    // PISO DE BLOQUES MARRONES (20% inferior)
    // -------------------------
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
    mov x0, x20         // framebuffer origen
    mov x1, x27         // buffer destino
    mov x2, #300        // y = 300 (donde empieza el gorro de Mario)
    mov x3, #0          // x = 0 inicial
    mov x4, #85         // alto de Mario = 85
    mov x5, #640        // ancho toda la pantalla
    bl copiar_region


// Variables de posición  (inicialmente en x21 = y, x22 = x)
// Donde arranca Mario
mov x21, #380     // y inicial 
mov x22, #0     // x inicial

bucle_animacion:


    // Borrar a Mario anterior (restaurar fondo desde buffer)
    mov x0, x27         // origen: buffer de fondo
    mov x1, x20         // destino: framebuffer
    mov x2, x21         // y de Mario (pies)
    sub x2, x2, #80     // Nos movemos a la cabeza de Mario para poder borrarlo
    mov x3, x22         // x actual de Mario (antes de moverlo)
    mov x4, #85         // alto de Mario
    mov x5, #50         // ancho de Mario
    bl copiar_region                             

    // Calcular nueva posición de Mario
    mov x0, x20
    mov x23, x22        // x23 guarda la posición anterior en X
    add x22, x22, #3    // avanza Mario en píxeles
    cmp x22, #400       // límite
    b.le seguir
    mov x22, #0         // volver a empezar si llegó al borde
seguir:

    // Dibuja a Mario en una nueva posición
    mov x0, x20
    mov x1, x21
    mov x2, x22
    bl draw_Mario

    // Delay para la animación
    movz x0, 0x4B40, lsl 0        // parte baja
	movk x0, 0x004C, lsl 16       // parte alta
    bl delay_custom

    b bucle_animacion

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
    cmp x6, x4
    b.ge .fin_copia

    mov x7, #0              // columna
.bucle_columnas:
    cmp x7, x5
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
.skip 640 * 85 * 4    // toda la línea horizontal, 85 px de alto que es el fondo donde se mueve Mario
