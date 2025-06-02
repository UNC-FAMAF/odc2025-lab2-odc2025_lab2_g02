.text
.globl draw_Mario

draw_Mario:

STR x30, [sp, #-16]!   // Guarda el LR en la pila

// ------------------------
    // Colores para Mario
    // ------------------------

    // Rojo (gorra y camisa)
    movz x14, 0x0000, lsl 0
    movk x14, 0xFFFF, lsl 16     // 0xFFFF0000
    mov  w14, w14             

    // Piel (cara y manos)
    movz x15, 0xC080, lsl 0
    movk x15, 0xFFFF, lsl 16     // 0xFFFFC080
    mov  w15, w15                

    // Marrón (pelo, bigote)
    movz x16, 0x2010, lsl 0
    movk x16, 0xFF30, lsl 16     // 0xFF302010
    mov  w16, w16                

    // Azul (overol)
    movz x17, 0x40C0, lsl 0
    movk x17, 0xFF00, lsl 16     // 0xFF0040C0     
    //#0000ff
    mov  w17, w17                

    // Amarillo (botones)
    movz x18, 0xFF00, lsl 0
    movk x18, 0xFFFF, lsl 16     // 0xFFFFFF00
    mov  w18, w18 

    // Negro (Bordes)
    movz    x12, 0x0000, lsl 0
    movk    x12, 0xFF00, lsl 16
    mov     w12, w12

    // -------------------------
    // Dibujo de Mario Bros
    // -------------------------
    // Cuadrados de 5x5 pixeles

    // Pies de Mario
    mov x0, x20
    mov x1, #380   
    mov x2, #150
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
    mov x4, #5
    bl draw_rect

    // Manos de Mario

    mov x1, #350   
    mov x2, #150
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

    mov x1, #355   
    mov x2, #160
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

    mov x1, #335   
    mov x2, #185
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

    mov x1, #330   
    mov x2, #185
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
