.globl draw_Moneda
draw_Moneda:
    STR x30, [sp, #-16]!

    mov x1, #210        // centro x en píxeles reales (640 / 2)
    mov x2, #120        // centro y en píxeles reales (por encima del piso)
    mov x3, #16         // radio en píxeles reales
    mov w4, w18         // amarillo (ya cargado en app.s)
    mov x0, x20         // framebuffer base

    bl draw_circle

    LDR x30, [sp], #16     // Restaura LR al salir
    RET

