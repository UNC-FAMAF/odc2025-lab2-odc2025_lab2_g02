.text 
.globl draw_Suelo

draw_Suelo:
STR x30, [sp, #-16]!   // Guarda el LR en la pila

        mov x21, #384  
        add x21, x21, #3
        mov x22, #0
        bl draw_pixelSuelo

        add x21, x21, #48
        bl draw_pixelSuelo

        sub x21, x21, #48
        add x22, x22, #48
        bl draw_pixelSuelo

        add x21, x21, #48
        bl draw_pixelSuelo

        sub x21, x21, #48
        add x22, x22, #48
        bl draw_pixelSuelo

        add x21, x21, #48
        bl draw_pixelSuelo

        sub x21, x21, #48
        add x22, x22, #48
        bl draw_pixelSuelo

        add x21, x21, #48
        bl draw_pixelSuelo
        sub x21, x21, #48
        add x22, x22, #48
        bl draw_pixelSuelo

        add x21, x21, #48
        bl draw_pixelSuelo
        sub x21, x21, #48
        add x22, x22, #48
        bl draw_pixelSuelo

        add x21, x21, #48
        bl draw_pixelSuelo
        sub x21, x21, #48
        add x22, x22, #48
        bl draw_pixelSuelo

        add x21, x21, #48
        bl draw_pixelSuelo
        sub x21, x21, #48
        add x22, x22, #48
        bl draw_pixelSuelo

        add x21, x21, #48
        bl draw_pixelSuelo
        sub x21, x21, #48
        add x22, x22, #48
        bl draw_pixelSuelo

        add x21, x21, #48
        bl draw_pixelSuelo
        sub x21, x21, #48
        add x22, x22, #48
        bl draw_pixelSuelo

        add x21, x21, #48
        bl draw_pixelSuelo
        sub x21, x21, #48
        add x22, x22, #48
        bl draw_pixelSuelo

        add x21, x21, #48
        bl draw_pixelSuelo
        sub x21, x21, #48
        add x22, x22, #48
        bl draw_pixelSuelo

        add x21, x21, #48
        bl draw_pixelSuelo
        sub x21, x21, #48
        add x22, x22, #48
        bl draw_pixelSuelo

        add x21, x21, #48
        bl draw_pixelSuelo
        sub x21, x21, #48
        add x22, x22, #48
        bl draw_pixelSuelo

        add x21, x21, #48
        bl draw_pixelSuelo



LDR x30, [sp], #16     // Restaura LR al salir
RET

