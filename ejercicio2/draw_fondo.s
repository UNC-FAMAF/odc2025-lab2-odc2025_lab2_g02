.text 
.globl draw_fondo

draw_fondo:
STR x30, [sp, #-16]!   // Guarda el LR en la pila


//----------------Dibujo de Montaña---------------


    // Borde de la Montaña


    mov x0, x20
    mov x1, #380   
    mov x2, #350
    mov x3, #3
    mov x4, #3
    mov w5, w12
    bl draw_rect

    sub x1, x1, #3
    add x2, x2, #3
    bl draw_rect
    
    sub x1, x1, #3
    add x2, x2, #3
    bl draw_rect
    
    sub x1, x1, #3
    add x2, x2, #3
    bl draw_rect
    
    sub x1, x1, #3
    add x2, x2, #3
    bl draw_rect
    
    sub x1, x1, #3
    add x2, x2, #3
    bl draw_rect
    
    sub x1, x1, #3
    add x2, x2, #3
    bl draw_rect
    
    sub x1, x1, #3
    add x2, x2, #3
    bl draw_rect
    
    sub x1, x1, #3
    add x2, x2, #3
    bl draw_rect
    
    sub x1, x1, #3
    add x2, x2, #3
    bl draw_rect
    
    sub x1, x1, #3
    add x2, x2, #3
    bl draw_rect
    
    sub x1, x1, #3
    add x2, x2, #3
    bl draw_rect
    
    sub x1, x1, #3
    add x2, x2, #3
    bl draw_rect
    
    sub x1, x1, #3
    add x2, x2, #3
    bl draw_rect
    
    sub x1, x1, #3
    add x2, x2, #3
    bl draw_rect
    
    sub x1, x1, #3
    add x2, x2, #3
    bl draw_rect
    
    sub x1, x1, #3
    add x2, x2, #3
    mov x4, #6
    bl draw_rect

    sub x1, x1, #3
    add x2, x2, #6
    mov x4, #9
    bl draw_rect

    sub x1, x1, #3
    add x2, x2, #9
    mov x4, #18
    bl draw_rect

    add x1, x1, #3
    add x2, x2, #18
    mov x4, #9
    bl draw_rect

    add x1, x1, #3
    add x2, x2, #9
    mov x4, #6
    bl draw_rect

    add x1, x1, #3
    add x2, x2, #6
    mov x4, #3
    bl draw_rect

    add x1, x1, #3
    add x2, x2, #3
    bl draw_rect

    add x1, x1, #3
    add x2, x2, #3
    bl draw_rect
    
    add x1, x1, #3
    add x2, x2, #3
    bl draw_rect
    
    add x1, x1, #3
    add x2, x2, #3
    bl draw_rect
    
    add x1, x1, #3
    add x2, x2, #3
    bl draw_rect
    
    add x1, x1, #3
    add x2, x2, #3
    bl draw_rect
    
    add x1, x1, #3
    add x2, x2, #3
    bl draw_rect
    
    add x1, x1, #3
    add x2, x2, #3
    bl draw_rect
    
    add x1, x1, #3
    add x2, x2, #3
    bl draw_rect
    
    add x1, x1, #3
    add x2, x2, #3
    bl draw_rect
    
    add x1, x1, #3
    add x2, x2, #3
    bl draw_rect
    
    add x1, x1, #3
    add x2, x2, #3
    bl draw_rect
    
    add x1, x1, #3
    add x2, x2, #3
    bl draw_rect
    
    add x1, x1, #3
    add x2, x2, #3
    bl draw_rect
    
    add x1, x1, #3
    add x2, x2, #3
    bl draw_rect
    
    // Relleno de la montaña --------------

    sub x2, x2, #138
    mov x4, #138
    mov w5, w28
    bl draw_rect

    sub x1, x1, #3
    add x2, x2, #3
    sub x4, x4, #6
    bl draw_rect

    sub x1, x1, #3
    add x2, x2, #3
    sub x4, x4, #6
    bl draw_rect

    sub x1, x1, #3
    add x2, x2, #3
    sub x4, x4, #6
    bl draw_rect

    sub x1, x1, #3
    add x2, x2, #3
    sub x4, x4, #6
    bl draw_rect

    sub x1, x1, #3
    add x2, x2, #3
    sub x4, x4, #6
    bl draw_rect

    sub x1, x1, #3
    add x2, x2, #3
    sub x4, x4, #6
    bl draw_rect

    sub x1, x1, #3
    add x2, x2, #3
    sub x4, x4, #6
    bl draw_rect

    sub x1, x1, #3
    add x2, x2, #3
    sub x4, x4, #6
    bl draw_rect

    sub x1, x1, #3
    add x2, x2, #3
    sub x4, x4, #6
    bl draw_rect

    sub x1, x1, #3
    add x2, x2, #3
    sub x4, x4, #6
    bl draw_rect

    sub x1, x1, #3
    add x2, x2, #3
    sub x4, x4, #6
    bl draw_rect

    sub x1, x1, #3
    add x2, x2, #3
    sub x4, x4, #6
    bl draw_rect

    sub x1, x1, #3
    add x2, x2, #3
    sub x4, x4, #6
    bl draw_rect

    sub x1, x1, #3
    add x2, x2, #3
    sub x4, x4, #6
    bl draw_rect

    sub x1, x1, #3
    add x2, x2, #3
    sub x4, x4, #6
    bl draw_rect

    sub x1, x1, #3
    add x2, x2, #6
    sub x4, x4, #12
    bl draw_rect

    sub x1, x1, #3
    add x2, x2, #9
    sub x4, x4, #18
    bl draw_rect

    // Detalles ------------------------------

    add x1, x1, #18
    add x2, x2, #12
    mov x3, #12
    mov x4, #6
    mov w5, w12
    bl draw_rect

    sub x1, x1, #9
    add x2, x2, #9
    mov x3, #12
    mov x4, #3
    bl draw_rect

    sub x1, x1, #3
    add x2, x2, #3
    mov x3, #18
    bl draw_rect

    add x1, x1, #3
    add x2, x2, #3
    mov x3, #12
    bl draw_rect

//---------------------Arbustos------------------------



    //Borde del Arbusto -------------------------------

    mov x1, #378
    sub x2, x2, #400
    mov x3, #6
    mov x4, #3
    mov w5, w12
    bl draw_rect

    sub x1, x1, #6
    sub x2, x2, #3
    mov x3, #6
    bl draw_rect

    sub x1, x1, #3
    add x2, x2, #3
    mov x3, #3
    mov x4, #6
    bl draw_rect

    sub x1, x1, #6
    add x2, x2, #6
    mov x3, #6
    mov x4, #3
    bl draw_rect

    sub x1, x1, #3
    add x2, x2, #3
    mov x3, #3
    bl draw_rect

    sub x1, x1, #3
    add x2, x2, #3
    mov x4, #9
    bl draw_rect

    sub x1, x1, #3
    add x2, x2, #9
    mov x4, #3
    bl draw_rect

    sub x1, x1, #3
    add x2, x2, #3
    bl draw_rect

    sub x1, x1, #9
    add x2, x2, #3
    mov x3, #9
    bl draw_rect

    sub x1, x1, #3
    add x2, x2, #3
    mov x3, #3
    mov x4, #6
    bl draw_rect

    sub x1, x1, #3
    add x2, x2, #6
    mov x4, #3
    bl draw_rect

    sub x1, x1, #3
    add x2, x2, #3
    mov x4, #9
    bl draw_rect

    add x1, x1, #3
    add x2, x2, #9
    mov x4, #3
    bl draw_rect

    add x1, x1, #3
    add x2, x2, #3
    mov x3, #6
    mov x4, #3
    bl draw_rect

    add x1, x1, #6
    add x2, x2, #3
    mov x3, #3
    bl draw_rect

    sub x1, x1, #3
    add x2, x2, #3
    bl draw_rect

    add x1, x1, #3
    add x2, x2, #3
    bl draw_rect

    add x1, x1, #3
    add x2, x2, #3
    mov x3, #12
    bl draw_rect

    add x1, x1, #9
    add x2, x2, #3
    mov x3, #3
    bl draw_rect

    sub x1, x1, #3
    add x2, x2, #3
    mov x4, #6
    bl draw_rect

    sub x1, x1, #12
    add x2, x2, #6
    mov x3, #12
    mov x4, #3
    bl draw_rect

    sub x1, x1, #3
    add x2, x2, #3
    mov x3, #3
    bl draw_rect

    sub x1, x1, #3
    add x2, x2, #3
    mov x4, #9
    bl draw_rect

    add x1, x1, #3
    add x2, x2, #9
    mov x4, #3
    bl draw_rect

    add x1, x1, #3
    add x2, x2, #3
    mov x3, #6
    bl draw_rect

    add x1, x1, #6
    add x2, x2, #3
    mov x3, #3
    bl draw_rect

    add x1, x1, #3
    add x2, x2, #3
    mov x3, #15
    bl draw_rect

    add x1, x1, #12
    add x2, x2, #3
    mov x3, #3
    bl draw_rect

    sub x1, x1, #3
    add x2, x2, #3
    bl draw_rect

    sub x1, x1, #9
    add x2, x2, #3
    mov x3, #9
    bl draw_rect

    sub x1, x1, #6
    add x2, x2, #3
    mov x3, #6
    bl draw_rect

    mov x3, #3
    mov x4, #6
    bl draw_rect

    sub x1, x1, #3
    add x2, x2, #6
    mov x4, #3
    bl draw_rect

    sub x1, x1, #3
    add x2, x2, #3
    mov x4, #6
    bl draw_rect

    add x1, x1, #3
    add x2, x2, #6
    mov x4, #3
    bl draw_rect

    add x1, x1, #3
    add x2, x2, #3
    mov x3, #9
    bl draw_rect

    add x1, x1, #9
    add x2, x2, #3
    mov x3, #3
    bl draw_rect

    add x1, x1, #3
    add x2, x2, #3
    mov x3, #6
    bl draw_rect

    add x1, x1, #6
    add x2, x2, #3
    mov x3, #6
    bl draw_rect

    add x1, x1, #6
    add x2, x2, #3
    mov x3, #3
    bl draw_rect

    add x1, x1, #3
    add x2, x2, #3
    mov x3, #6
    bl draw_rect

    add x1, x1, #6
    sub x2, x2, #3
    mov x3, #6
    bl draw_rect

    // Relleno Arbusto ------------------------------

    sub x2, x2, #138
    mov x4, #138
    mov w5, w19
    bl draw_rect

    sub x1, x1, #6
    sub x2, x2, #3
    mov x4, #144
    bl draw_rect

    sub x1, x1, #3
    add x2, x2, #6
    mov x3, #3
    mov x4, #135
    bl draw_rect

    sub x1, x1, #3
    add x2, x2, #3
    mov x4, #129
    bl draw_rect

    sub x1, x1, #3
    mov x4, #90
    bl draw_rect

    sub x1, x1, #3
    add x2, x2, #3
    mov x4, #87
    bl draw_rect

    sub x1, x1, #3
    add x2, x2, #9
    mov x4, #42
    bl draw_rect

    sub x1, x1, #3
    add x2, x2, #3
    mov x4, #39
    bl draw_rect

    sub x1, x1, #3
    add x2, x2, #3
    mov x4, #36
    bl draw_rect

    sub x1, x1, #3
    add x2, x2, #3
    mov x4, #33
    bl draw_rect

    sub x1, x1, #3
    mov x4, #24
    bl draw_rect

    sub x1, x1, #3
    mov x4, #21
    bl draw_rect

    sub x1, x1, #3
    add x2, x2, #6
    mov x4, #15
    bl draw_rect

    sub x1, x1, #3
    add x2, x2, #3
    mov x4, #9
    bl draw_rect

    add x1, x1, #9
    add x2, x2, #18
    mov x4, #3
    bl draw_rect

    add x1, x1, #12
    add x2, x2, #12
    mov x4, #30
    bl draw_rect

    sub x1, x1, #3
    add x2, x2, #6
    mov x4, #24
    bl draw_rect

    sub x1, x1, #3
    add x2, x2, #3
    mov x4, #21
    bl draw_rect

    sub x1, x1, #3
    mov x4, #18
    bl draw_rect

    sub x1, x1, #6
    mov x3, #6
    mov x4, #15
    bl draw_rect

    sub x1, x1, #3
    add x2, x2, #3
    mov x3, #3
    mov x4, #9
    bl draw_rect

    add x1, x1, #24
    add x2, x2, #24
    mov x4, #33
    bl draw_rect

    sub x1, x1, #3
    add x2, x2, #3
    mov x4, #27
    bl draw_rect

    sub x1, x1, #3
    add x2, x2, #3
    mov x4, #24
    bl draw_rect

    sub x1, x1, #3
    mov x4, #21
    bl draw_rect

    sub x1, x1, #3
    mov x4, #18
    bl draw_rect

    sub x1, x1, #3
    add x2, x2, #3
    mov x4, #15
    bl draw_rect

    sub x1, x1, #3
    add x2, x2, #3
    mov x4, #12
    bl draw_rect

    sub x1, x1, #3
    add x2, x2, #3
    mov x4, #6
    bl draw_rect

// Detalles Arbusto -----------------------------------

    add x1, x1, #12
    add x2, x2, #3
    mov x4, #3
    mov w5, w11
    bl draw_rect

    add x1, x1, #3
    add x2, x2, #3
    bl draw_rect

    add x1, x1, #3
    sub x2, x2, #12
    mov x4, #6
    bl draw_rect

    add x1, x1, #3
    sub x2, x2, #3
    mov x4, #3
    bl draw_rect

    sub x1, x1, #15
    sub x2, x2, #24
    bl draw_rect

    add x1, x1, #3
    add x2, x2, #3
    bl draw_rect

    add x1, x1, #3
    sub x2, x2, #6
    bl draw_rect

    add x1, x1, #3
    sub x2, x2, #6
    mov x4, #6
    bl draw_rect

    add x1, x1, #3
    sub x2, x2, #3
    mov x4, #3
    bl draw_rect

    sub x1, x1, #12
    sub x2, x2, #30
    mov x4, #3
    bl draw_rect

    add x1, x1, #3
    add x2, x2, #3
    bl draw_rect

    sub x2, x2, #12
    mov x4, #6
    bl draw_rect

    add x1, x1, #3
    sub x2, x2, #6
    bl draw_rect










LDR x30, [sp], #16     // Restaura LR al salir
RET

