.text
.globl draw_TuboVerde

draw_TuboVerde:

STR x30, [sp, #-16]!   // Guarda el LR en la pila

// Negro (Bordes)
    movz    x12, 0x0000, lsl 0
    movk    x12, 0xFF00, lsl 16
    mov     w12, w12

// Verde (Tubo)
    movz    x11, 0xFF00, lsl 0
    movk    x11, 0xFF00, lsl 16
    mov     w11, w11

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

    LDR x30, [sp], #16     // Restaura LR al salir
    RET
