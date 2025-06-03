.text 
.globl draw_cloud

draw_cloud:

STR x30, [sp, #-16]!   // Guarda el LR en la pila

    //NUBE 1

    mov x0,x20  //framebuffer inicial
    mov x10, #20 //y inicial
    mov x11, #100 //x inicial
    mov x12, #4 //ancho y alto
    mov w5,w29 //color Blanco


    //Relleno Nube (Blanco)

    mov x1, x10
    mov x2, x11
    mov x3, #4 //alto
    mov x4, #12 //ncho
    bl draw_rect

    add x1,x1, #4
    sub x2,x2,#4
    mov x4,#20
    bl draw_rect
    
    add x1,x1, #4
    sub x2,x2,#8
    mov x4,#28
    bl draw_rect

    add x1,x1, #4
    mov x4,#32
    bl draw_rect
    add x2,x2,#36
    mov x4,#4
    bl draw_rect

    sub x2,x2, #36
    add x1,x1, #4
    mov x4,#44
    bl draw_rect

    add x1,x1,#4
    sub x2,x2, #4
    mov x4,#48
    bl draw_rect

    add x1,x1,#4
    sub x2,x2,#4
    mov x4,#52
    bl draw_rect

    add x1,x1,#4
    sub x2,x2,#4
    mov x4,#60
    bl draw_rect

    add x1,x1,#4
    sub x2,x2,#12
    mov x4,#72
    bl draw_rect
    add x2,x2,#84
    mov x4,#4
    bl draw_rect

    add x1,x1,#4
    sub x2,x2,#84
    sub x2,x2,#4
    mov x4,#80
    bl draw_rect
    add x2,x2,#84
    mov x4,#8
    bl draw_rect

    sub x2,x2,#84
    add x1,x1,#4
    sub x2,x2,#8
    mov x4,#100
    bl draw_rect

    add x1,x1,#4
    mov x4,#104
    bl draw_rect
    add x2,x2,#108
    mov x4,#4
    bl draw_rect

    sub x2,x2,#108
    add x1,x1,#4
    sub x2,x2,#8
    mov x4,#120
    bl draw_rect

    add x1,x1,#4
    bl draw_rect

    add x1,x1,#4
    add x2,x2,#4
    mov x4,#112
    bl draw_rect

    add x1,x1,#4
    add x2,x2,#4
    mov x4,#104
    bl draw_rect 

    add x1,x1,#4
    add x2,x2,#4
    mov x4,#104
    bl draw_rect

    add x1,x1,#4
    add x2,x2,#4
    bl draw_rect

    add x1,x1,#4
    bl draw_rect

    add x1,x1,#4
    add x2,x2,#16
    mov x4,#80
    bl draw_rect

    add x1,x1,#4
    add x2,x2,#4
    mov x4,#24
    bl draw_rect
    add x2,x2,#28
    mov x4,#32
    bl draw_rect
    add x2,x2,#36
    mov x4,#8
    bl draw_rect

    sub x2,x2,#64
    add x1,x1,#4
    add x2,x2,#8
    mov x4,#12
    bl draw_rect
    add x2,x2,#28
    mov x4,#16
    bl draw_rect

   //Nube 2
    mov x10, #20 //y inicial
    mov x11, #330 // x inicial
    mov x12, #4 //ancho y alto
    mov w5,w29


    //Relleno Nube (Blanco)

    mov x1, x10
    mov x2, x11
    mov x3, #4 //alto
    mov x4, #12 //ncho
    bl draw_rect

    add x1,x1, #4
    sub x2,x2,#4
    mov x4,#20
    bl draw_rect
    
    add x1,x1, #4
    sub x2,x2,#8
    mov x4,#28
    bl draw_rect

    add x1,x1, #4
    mov x4,#32
    bl draw_rect
    add x2,x2,#36
    mov x4,#4
    bl draw_rect

    sub x2,x2, #36
    add x1,x1, #4
    mov x4,#44
    bl draw_rect

    add x1,x1,#4
    sub x2,x2, #4
    mov x4,#48
    bl draw_rect

    add x1,x1,#4
    sub x2,x2,#4
    mov x4,#52
    bl draw_rect

    add x1,x1,#4
    sub x2,x2,#4
    mov x4,#60
    bl draw_rect

    add x1,x1,#4
    sub x2,x2,#12
    mov x4,#72
    bl draw_rect
    add x2,x2,#84
    mov x4,#4
    bl draw_rect

    add x1,x1,#4
    sub x2,x2,#84
    sub x2,x2,#4
    mov x4,#80
    bl draw_rect
    add x2,x2,#84
    mov x4,#8
    bl draw_rect

    sub x2,x2,#84
    add x1,x1,#4
    sub x2,x2,#8
    mov x4,#100
    bl draw_rect

    add x1,x1,#4
    mov x4,#104
    bl draw_rect
    add x2,x2,#108
    mov x4,#4
    bl draw_rect

    sub x2,x2,#108
    add x1,x1,#4
    sub x2,x2,#8
    mov x4,#120
    bl draw_rect

    add x1,x1,#4
    bl draw_rect

    add x1,x1,#4
    add x2,x2,#4
    mov x4,#112
    bl draw_rect

    add x1,x1,#4
    add x2,x2,#4
    mov x4,#104
    bl draw_rect 

    add x1,x1,#4
    add x2,x2,#4
    mov x4,#104
    bl draw_rect

    add x1,x1,#4
    add x2,x2,#4
    bl draw_rect

    add x1,x1,#4
    bl draw_rect

    add x1,x1,#4
    add x2,x2,#16
    mov x4,#80
    bl draw_rect

    add x1,x1,#4
    add x2,x2,#4
    mov x4,#24
    bl draw_rect
    add x2,x2,#28
    mov x4,#32
    bl draw_rect
    add x2,x2,#36
    mov x4,#8
    bl draw_rect

    sub x2,x2,#64
    add x1,x1,#4
    add x2,x2,#8
    mov x4,#12
    bl draw_rect
    add x2,x2,#28
    mov x4,#16
    bl draw_rect


  //Nube 3

    mov x10, #20 //y inicial
    mov x11, #550 // x inicial
    mov x12, #4 //ancho y alto
    mov w5,w29


    //Relleno Nube (Blanco)

    mov x1, x10
    mov x2, x11
    mov x3, #4 //alto
    mov x4, #12 //ncho
    bl draw_rect

    add x1,x1, #4
    sub x2,x2,#4
    mov x4,#20
    bl draw_rect
    
    add x1,x1, #4
    sub x2,x2,#8
    mov x4,#28
    bl draw_rect

    add x1,x1, #4
    mov x4,#32
    bl draw_rect
    add x2,x2,#36
    mov x4,#4
    bl draw_rect

    sub x2,x2, #36
    add x1,x1, #4
    mov x4,#44
    bl draw_rect

    add x1,x1,#4
    sub x2,x2, #4
    mov x4,#48
    bl draw_rect

    add x1,x1,#4
    sub x2,x2,#4
    mov x4,#52
    bl draw_rect

    add x1,x1,#4
    sub x2,x2,#4
    mov x4,#60
    bl draw_rect

    add x1,x1,#4
    sub x2,x2,#12
    mov x4,#72
    bl draw_rect
    add x2,x2,#84
    mov x4,#4
    bl draw_rect

    add x1,x1,#4
    sub x2,x2,#84
    sub x2,x2,#4
    mov x4,#80
    bl draw_rect
    add x2,x2,#84
    mov x4,#8
    bl draw_rect

    sub x2,x2,#84
    add x1,x1,#4
    sub x2,x2,#8
    mov x4,#100
    bl draw_rect

    add x1,x1,#4
    mov x4,#104
    bl draw_rect
    add x2,x2,#108
    mov x4,#4
    bl draw_rect

    sub x2,x2,#108
    add x1,x1,#4
    sub x2,x2,#8
    mov x4,#120
    bl draw_rect

    add x1,x1,#4
    bl draw_rect

    add x1,x1,#4
    add x2,x2,#4
    mov x4,#112
    bl draw_rect

    add x1,x1,#4
    add x2,x2,#4
    mov x4,#104
    bl draw_rect 

    add x1,x1,#4
    add x2,x2,#4
    mov x4,#104
    bl draw_rect

    add x1,x1,#4
    add x2,x2,#4
    bl draw_rect

    add x1,x1,#4
    bl draw_rect

    add x1,x1,#4
    add x2,x2,#16
    mov x4,#80
    bl draw_rect

    add x1,x1,#4
    add x2,x2,#4
    mov x4,#24
    bl draw_rect
    add x2,x2,#28
    mov x4,#32
    bl draw_rect
    add x2,x2,#36
    mov x4,#8
    bl draw_rect

    sub x2,x2,#64
    add x1,x1,#4
    add x2,x2,#8
    mov x4,#12
    bl draw_rect
    add x2,x2,#28
    mov x4,#16
    bl draw_rect







LDR x30, [sp], #16     // Restaura LR al salir
ret
