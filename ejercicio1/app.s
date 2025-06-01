.equ SCREEN_WIDTH,      640
.equ SCREEN_HEIGH,      480
.equ BITS_PER_PIXEL,    32

.equ GPIO_BASE,         0x3f200000
.equ GPIO_GPFSEL0,      0x00
.equ GPIO_GPLEV0,       0x34

.globl main

main:
    mov x20, x0              // framebuffer base en x20

    // -------------------------
    // COLORES (ARGB)

    // Celeste (Cielo)
    movz    x10, 0xCEE9, lsl 0
    movk    x10, 0xFF99, lsl 16
    mov     w10, w10

    // Marron (Bloques)
    movz    x13, 0x4513, lsl 0
    movk    x13, 0xFF8B, lsl 16
    mov     w13, w13

    // Verde (Tubo)
    movz    x11, 0xFF00, lsl 0
    movk    x11, 0xFF00, lsl 16
    mov     w11, w11

    // Negro (Bordes)
    movz    x12, 0x0000, lsl 0
    movk    x12, 0xFF00, lsl 16
    mov     w12, w12

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

    // -------------------------
    // TUBO VERDE
    // Coordenadas y dimensiones del tubo
    mov x1, #288            // y inicial (mas arriba que antes)
    mov x2, #560            // x inicial (mas cerca del borde derecho)
    mov x3, #96             // alto del tubo (96px)
    mov x4, #40             // ancho del tubo (40px)
    mov w5, w11             // color verde
    bl draw_rect
	
	// Dibuja el borde superior del tubo
    mov x1, #288           // y inicial (en el piso)
    mov x2, #560            // x inicial
    mov x3, #1              // alto del borde
    mov x4, #40             // ancho
    mov w5, w12
    bl draw_rect

    // Dibuja el borde izquierdo del tubo
    mov x1, #288            // y inicial
    mov x2, #560
    mov x3, #96
    mov x4, #1
    mov w5, w12
    bl draw_rect

    // Dibuja el borde derecho del tubo
    mov x1, #288            // y inicial
    mov x2, #599
    mov x3, #96
    mov x4, #1
    mov w5, w12
    bl draw_rect


    // Dibuja la boca del tubo (mas ancha)
    mov x1, #267            // y inicial (20 pixeles arriba del cuerpo)
    mov x2, #550            // x inicial (extendido 10 pixeles a la izquierda)
    mov x3, #20             // alto de la boca
    mov x4, #60             // ancho de la boca
    mov w5, w11
    bl draw_rect

    // Dibuja los bordes de la boca (negro)
    // Borde superior
    mov x1, #267
    mov x2, #550
    mov x3, #1
    mov x4, #60
    mov w5, w12
    bl draw_rect
	
	// Borde inferior
    mov x1, #287
    mov x2, #550
    mov x3, #1
    mov x4, #60
    mov w5, w12
    bl draw_rect

    // Borde izquierdo
    mov x1, #267
    mov x2, #550
    mov x3, #20
    mov x4, #1
    mov w5, w12
    bl draw_rect

    // Borde derecho
    mov x1, #267
    mov x2, #609
    mov x3, #20
    mov x4, #1
    mov w5, w12
    bl draw_rect

    // -------------------------
    // GPIO SETUP
    // -------------------------
    mov x9, GPIO_BASE
    str wzr, [x9, GPIO_GPFSEL0]
    ldr w10, [x9, GPIO_GPLEV0]
    and w11, w10, 0b10
    lsr w11, w11, 1

    // -------------------------
    // TEXTO "OdC 2025" en esquina inferior izquierda
    // -------------------------

    //pensado con bloquesitos de 8x8 px

    // Letra O
    mov x0, x20
    mov x1, #410
    mov x2, #10
    mov x3, #8
    mov x4, #32
    mov w5, w12
    bl draw_rect

    add x1, x1, #8
    mov x3, #32
    mov x4, #8
    bl draw_rect

    add x1, x1, #24
    add x2, x2, #8
    mov x3, #8
    mov x4, #24
    bl draw_rect

    mov x1, #410+8
    mov x2, #10+24
    mov x3, #24
    mov x4, #8
    bl draw_rect

    // Letra D

    mov x1, #410
    mov x2, #50
    mov x3, #8
    mov x4, #24
    bl draw_rect

    add x1, x1, #8
    mov x3, #32
    mov x4, #8
    bl draw_rect

    add x1, x1, #24
    add x2, x2, #8
    mov x3, #8
    mov x4, #16
    bl draw_rect

    mov x1, #410+8
    mov x2, #50+24
    mov x3, #24
    mov x4, #8
    bl draw_rect
    
    // Letra C

    mov x1, #410
    mov x2, #90+8
    mov x3, #8
    mov x4, #24
    bl draw_rect

    add x1, x1, #8
    mov x2, #90
    mov x3, #24
    mov x4, #8
    bl draw_rect

    add x1, x1, #24
    add x2, x2, #8
    mov x3, #8
    mov x4, #24
    bl draw_rect

    // Número 2

    mov x1, #410
    mov x2, #130
    mov x3, #8
    mov x4, #24
    bl draw_rect

    add x1, x1, #16
    bl draw_rect
    add x1, x1, #16
    bl draw_rect

    mov x1, #410+8
    mov x2, #130+16
    mov x3, #8
    mov x4, #8
    bl draw_rect

    mov x1, #410+24
    mov x2, #130
    mov x3, #8
    mov x4, #8
    bl draw_rect
    
    // Número 0

    mov x1, #410
    mov x2, #162
    mov x3, #8
    mov x4, #24
    bl draw_rect

    add x1, x1, #8
    mov x3, #32
    mov x4, #8
    bl draw_rect

    add x1, x1, #24
    add x2, x2, #8
    mov x3, #8
    mov x4, #16
    bl draw_rect

    mov x1, #410+8
    mov x2, #162+16
    mov x3, #24
    mov x4, #8
    bl draw_rect
   
    // Número 2 (repetido)

    mov x1, #410
    mov x2, #194
    mov x3, #8
    mov x4, #24
    bl draw_rect

    add x1, x1, #16
    bl draw_rect
    add x1, x1, #16
    bl draw_rect

    mov x1, #410+8
    mov x2, #194+16
    mov x3, #8
    mov x4, #8
    bl draw_rect

    mov x1, #410+24
    mov x2, #194
    mov x3, #8
    mov x4, #8
    bl draw_rect

    // Número 5

    mov x1, #410
    mov x2, #226
    mov x3, #8
    mov x4, #24
    bl draw_rect

    add x1, x1, #16
    bl draw_rect
    add x1, x1, #16
    bl draw_rect

    mov x1, #410+24
    mov x2, #226+16
    mov x3, #8
    mov x4, #8
    bl draw_rect

    mov x1, #410+8
    mov x2, #226
    mov x3, #8
    mov x4, #8
    bl draw_rect

    // Bucle infinito
InfLoop:
    b InfLoop

// -------------------------------
// PROCEDIMIENTO: draw_rect
// -------------------------------
// x0 = framebuffer base
// x1 = fila y inicial
// x2 = columna x inicial
// x3 = alto
// x4 = ancho
// w5 = color ARGB32

draw_rect:
    mov x6, x1
    mov x7, #SCREEN_WIDTH
    mul x6, x6, x7
    add x6, x6, x2
    lsl x6, x6, #2
    add x6, x0, x6

    mov x8, x3
draw_row:
    mov x9, x4
    mov x10, x6

draw_col:
    str w5, [x10]
    add x10, x10, #4
    subs x9, x9, #1
    b.ne draw_col

    add x6, x6, #(SCREEN_WIDTH * 4)
    subs x8, x8, #1
    b.ne draw_row

    ret
