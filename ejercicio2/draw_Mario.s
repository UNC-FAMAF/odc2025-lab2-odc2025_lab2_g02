.text
.globl draw_Mario

draw_Mario:

STR x30, [sp, #-16]!   // Guarda el LR en la pila

    // -------------------------
    // Dibujo de Mario Bros
    // -------------------------
    // Cuadrados de 5x5 pixeles

    // Pies de Mario
    mov x0, x20

     //mov x1, #380   
    // mov x2, #150

    mov x1, X21   
    mov x2, X22
    mov x3, #5
    mov x4, #20
    mov w5, w12
    bl draw_rect
   
    add x2, x2, #40
    bl draw_rect

    sub x1, x1, #5   
    sub x2, x2, #35
    mov x4, #15
    bl draw_rect

    add x2, x2, #35
    bl draw_rect

    // overol

    sub x1, x1, #5  
    sub x2, x2, #30
    mov x4, #15
    mov w5, w17
    bl draw_rect

    add x2, x2, #25
    mov x4, #15
    bl draw_rect

    sub x1, x1, #5  
    sub x2, x2, #25
    mov x4, #40
    bl draw_rect

    sub x1, x1, #5  
    add x2, x2, #5
    mov x4, #30
    bl draw_rect

    sub x1, x1, #5  
    mov x4, #5
    bl draw_rect

    add x2, x2, #25
    bl draw_rect

    sub x1, x1, #5  
    sub x2, x2, #15
    mov x3, #10
    mov x4, #10
    bl draw_rect

    sub x1, x1, #5  
    add x2, x2, #10
    mov x4, #5
    bl draw_rect

    sub x1, x1, #5 
    sub x2, x2, #15
    mov x3, #15
    bl draw_rect

    //botones overol

    add x1, x1, #15  
    mov x3, #5
    mov w5, w18
    bl draw_rect

    add x2, x2, #15
    bl draw_rect

    // Manos de Mario

    sub x2, x2, #35
    mov x3, #15
    mov x4, #10
    mov w5, w15
    bl draw_rect

    add x1, x1, #5
    add x2, x2, #10
    mov x3, #5
    mov x4, #5
    bl draw_rect

    add x2, x2, #35
    bl draw_rect

    sub x1, x1, #5  
    add x2, x2, #5
    mov x3, #15
    mov x4, #10
    bl draw_rect

    // Camisa de Mario

    sub x2, x2, #40
    mov x3, #5
    mov x4, #5
    mov w5, w14
    bl draw_rect
  
    add x2, x2, #35
    bl draw_rect

    sub x1, x1, #5   
    sub x2, x2, #45
    mov x4, #20
    bl draw_rect

    add x2, x2, #40
    bl draw_rect

    sub x1, x1, #5   
    sub x2, x2, #35
    mov x4, #15
    bl draw_rect
 
    add x2, x2, #35
    bl draw_rect

    sub x1, x1, #5   
    sub x2, x2, #30
    mov x4, #10
    bl draw_rect

    add x2, x2, #15
    mov x3, #10
    bl draw_rect

    add x2, x2, #10
    mov x3, #5
    mov x4, #5
    bl draw_rect

    // Cabeza de Mario

    sub x1, x1, #5
    mov x3, #5
    mov x4, #15
    mov w5, w15
    bl draw_rect

    sub x1, x1, #5  
    sub x2, x2, #20
    mov x3, #10
    mov x4, #20
    bl draw_rect

    sub x1, x1, #5  
    add x2, x2, #20
    mov x3, #5
    mov x4, #5
    bl draw_rect
  
    add x2, x2, #20
    bl draw_rect

    sub x1, x1, #5  
    sub x2, x2, #45
    mov x3, #10
    bl draw_rect
 
    add x2, x2, #10
    mov x3, #5
    bl draw_rect

    add x2, x2, #25
    mov x3, #10
    mov x4, #10
    bl draw_rect

    sub x1, x1, #5  
    sub x2, x2, #20
    mov x3, #15
    mov x4, #10
    bl draw_rect

    add x2, x2, #15
    mov x3, #10
    mov x4, #5
    bl draw_rect

    // Ojo de Mario
 
    sub x2, x2, #5
    mov x3, #10
    mov w5, w12
    bl draw_rect

    // Pelo y barba de Mario

    add x1, x1, #15
    mov x3, #5
    mov x4, #20
    mov w5, w16
    bl draw_rect
 
    sub x2, x2, #25
    mov x4, #5
    bl draw_rect

    sub x1, x1, #5   
    add x2, x2, #10
    bl draw_rect

    add x2, x2, #20
    bl draw_rect

    sub x1, x1, #5   
    sub x2, x2, #35
    mov x3, #15
    bl draw_rect

    add x2, x2, #10
    mov x3, #10
    bl draw_rect

    sub x1, x1, #5   
    sub x2, x2, #5
    mov x3, #5
    mov x4, #15
    bl draw_rect

    // Gorra de Mario

    sub x1, x1, #5   
    mov x4, #45
    mov w5, w14
    bl draw_rect

    sub x1, x1, #5
    add x2, x2, #5   
    mov x4, #30
    bl draw_rect

    sub x1, x1, #5
    add x2, x2, #5   
    mov x4, #20
    bl draw_rect

LDR x30, [sp], #16     // Restaura LR al salir
RET
