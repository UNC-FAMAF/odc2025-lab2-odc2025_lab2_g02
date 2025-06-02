.text 
.globl draw_rect

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

STR x30, [sp, #-16]!   // Guarda el LR en la pila

    mov x6, x1
    mov x7, #640
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

    add x6, x6, #(640 * 4)
    subs x8, x8, #1
    b.ne draw_row

LDR x30, [sp], #16     // Restaura LR al salir
RET

