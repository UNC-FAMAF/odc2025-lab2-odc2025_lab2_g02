.text 
.globl draw_OdC2025

draw_OdC2025:

STR x30, [sp, #-16]!   // Guarda el LR en la pila

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


LDR x30, [sp], #16     // Restaura LR al salir
RET
