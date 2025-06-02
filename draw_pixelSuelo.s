.text 
.globl draw_pixelSuelo

draw_pixelSuelo:
STR x30, [sp, #-16]!   // Guarda el LR en la pila

    
    // Dibuja un solo cuadrado
    // Cuadrados de 48 pixeles con detalles en 3x3 pixeles que se va a repetir

   // Posicion inicial y=348 x=0
   

    // Claros
        mov x1, x21  
        mov x2, x22
        mov x3, #27
        mov x4, #3
        mov w5, w15
        bl draw_rect

        add x1, x1, #27 
        mov x3, #12
        bl draw_rect

        sub x1, x1, #30 
        add x2, x2, #3
        mov x3, #3
        mov x4, #24
        bl draw_rect

        add x1, x1, #33 
        mov x3, #3
        mov x4, #3
        bl draw_rect

        add x1, x1, #3 
        add x2, x2, #3
        mov x3, #3
        mov x4, #6
        bl draw_rect

        add x1, x1, #3 
        add x2, x2, #6
        mov x3, #3
        mov x4, #9
        bl draw_rect

        sub x1, x1, #3 
        add x2, x2, #12
        mov x3, #12
        mov x4, #3
        bl draw_rect

        sub x1, x1, #6 
        add x2, x2, #3
        mov x3, #6
        bl draw_rect

        sub x1, x1, #12 
        add x2, x2, #3
        mov x3, #12
        mov x4, #3
        bl draw_rect

        mov x3, #3
        mov x4, #15
        bl draw_rect

        sub x1, x1, #15 
        mov x3, #12
        mov x4, #3
        bl draw_rect

        sub x1, x1, #3 
        add x2, x2, #3
        mov x3, #3
        mov x4, #12
        bl draw_rect
    
        // Sombras 

        sub x2, x2, #6
        mov x3, #30
        mov x4, #3
        mov w5, w12
        bl draw_rect

        add x1, x1, #3 
        add x2, x2, #18
        mov x3, #12
        bl draw_rect

        add x1, x1, #9 
        sub x2, x2, #12
        mov x3, #3
        mov x4, #3
        bl draw_rect

        add x1, x1, #3 
        mov x3, #3
        mov x4, #12
        bl draw_rect

        add x1, x1, #3 
        add x2, x2, #12
        mov x3, #27
        mov x4, #3
        bl draw_rect

        add x1, x1, #12 
        sub x2, x2, #21
        mov x3, #6
        mov x4, #3
        bl draw_rect

        sub x2, x2, #24
        mov x3, #3
        mov x4, #6
        bl draw_rect

        add x1, x1, #3 
        add x2, x2, #6
        bl draw_rect

        add x1, x1, #3 
        add x2, x2, #6
        mov x4, #12
        bl draw_rect

        add x1, x1, #3 
        add x2, x2, #9
        mov x3, #6
        mov x4, #3
        bl draw_rect

        add x1, x1, #3 
        add x2, x2, #21
        mov x3, #3
        bl draw_rect

        add x1, x1, #3 
        sub x2, x2, #15
        mov x3, #3
        mov x4, #18
        bl draw_rect

        sub x2, x2, #24
        bl draw_rect

        
LDR x30, [sp], #16     // Restaura LR al salir
RET

