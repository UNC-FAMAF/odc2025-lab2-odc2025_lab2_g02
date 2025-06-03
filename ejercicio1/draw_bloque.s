.text 
.globl draw_bloque

draw_bloque:
STR x30, [sp, #-16]!   // Guarda el LR en la pila

// Bloque de ladrillo 1

    mov x1, #150   
    mov x2, #150
    mov x3, #51
    mov x4, #51
    mov w5, w13
    bl draw_rect

// Bordes negros

    mov x3, #3
    mov x4, #51
    mov w5, w15
    bl draw_rect

    add x1, x1, #48
    mov x3, #3
    mov x4, #51
    mov w5, w12
    bl draw_rect

    // Líneas verticales
    sub x1, x1, #45
    add x2, x2, #36
    mov x3, #9
    mov x4, #3
    bl draw_rect

    sub x2, x2, #21
    bl draw_rect

    add x1, x1, #12
    sub x2, x2, #6
    bl draw_rect

    add x2, x2, #21
    bl draw_rect

    add x1, x1, #12
    add x2, x2, #6
    bl draw_rect

    sub x2, x2, #21
    bl draw_rect

    add x1, x1, #12
    add x2, x2, #15
    bl draw_rect

    sub x2, x2, #21
    bl draw_rect

    //Lineas paralelas

    sub x1, x1, #3
    sub x2, x2, #9
    mov x3, #3
    mov x4, #51
    bl draw_rect

    sub x1, x1, #12
    bl draw_rect

    sub x1, x1, #12
    bl draw_rect

  // Bloque de ladrillo 2

    sub x1, x1, #12   
    add x2, x2, #51
    mov x3, #51
    mov x4, #51
    mov w5, w13
    bl draw_rect

// Bordes negros

    mov x3, #3
    mov x4, #51
    mov w5, w15
    bl draw_rect

    add x1, x1, #48
    mov x3, #3
    mov x4, #51
    mov w5, w12
    bl draw_rect

    // Líneas verticales
    sub x1, x1, #45
    add x2, x2, #36
    mov x3, #9
    mov x4, #3
    bl draw_rect

    sub x2, x2, #21
    bl draw_rect

    add x1, x1, #12
    sub x2, x2, #6
    bl draw_rect

    add x2, x2, #21
    bl draw_rect

    add x1, x1, #12
    add x2, x2, #6
    bl draw_rect

    sub x2, x2, #21
    bl draw_rect

    add x1, x1, #12
    add x2, x2, #15
    bl draw_rect

    sub x2, x2, #21
    bl draw_rect

    //Lineas paralelas

    sub x1, x1, #3
    sub x2, x2, #9
    mov x3, #3
    mov x4, #51
    bl draw_rect

    sub x1, x1, #12
    bl draw_rect

    sub x1, x1, #12
    bl draw_rect

    // Bloque de ladrillo 2

    sub x1, x1, #12   
    add x2, x2, #51
    mov x3, #51
    mov x4, #51
    mov w5, w13
    bl draw_rect

// Bordes negros

    mov x3, #3
    mov x4, #51
    mov w5, w15
    bl draw_rect

    add x1, x1, #48
    mov x3, #3
    mov x4, #51
    mov w5, w12
    bl draw_rect

    // Líneas verticales
    sub x1, x1, #45
    add x2, x2, #36
    mov x3, #9
    mov x4, #3
    bl draw_rect

    sub x2, x2, #21
    bl draw_rect

    add x1, x1, #12
    sub x2, x2, #6
    bl draw_rect

    add x2, x2, #21
    bl draw_rect

    add x1, x1, #12
    add x2, x2, #6
    bl draw_rect

    sub x2, x2, #21
    bl draw_rect

    add x1, x1, #12
    add x2, x2, #15
    bl draw_rect

    sub x2, x2, #21
    bl draw_rect

    //Lineas paralelas

    sub x1, x1, #3
    sub x2, x2, #9
    mov x3, #3
    mov x4, #51
    bl draw_rect

    sub x1, x1, #12
    bl draw_rect

    sub x1, x1, #12
    bl draw_rect


LDR x30, [sp], #16     // Restaura LR al salir
RET

