.text 
.globl draw_cloudshape

draw_cloudshape:

STR x30, [sp, #-16]!   // Guarda el LR en la pila



    //fila 1 de pixeles
    //bordes(Negro)
    mov x1, x10   //y
    mov x2, x11   //x
    mov x3, x12   //alto
    mov x4, #12 //ancho
    sub x1,x1,#4
    mov w5,w12
    bl draw_rect
    mov w5,w29
    
    //fila 2 de pixeles

    //Relleno Nube(Blanco)
    add x1,x1, #4   //y
    mov x2, x11   //x
    mov x3, x12   //alto
    mov x4, #12  //ancho
    bl draw_rect
    //Bordes(Negro)
    sub x2,x2,#4
    mov x4,#4
    mov w5,w12
    bl draw_rect
    add x2,x2, #16
    bl draw_rect
    sub x2,x2,#12
    mov w5,w29

    



    //fila 3 de pixeles
    //Relleno Nube(Blanco)
    add x1,x1, #4
    sub x2,x2,#4
    mov x4,#20
    bl draw_rect
    //Bordes(Negro)
    sub x2,x2,#8
    mov x4,#8
    mov w5,w12
    bl draw_rect
    add x2,x2,#28
    mov x4,#4
    bl draw_rect
    sub x2,x2,#20
    mov w5,w29


    //fila 4 de pixeles
    //Relleno Nube(Blanco)
    add x1,x1, #4
    sub x2,x2,#8
    mov x4,#28
    bl draw_rect
    //Bordes(Negro)
    sub x2,x2,#4
    mov x4,#4
    mov w5,w12
    bl draw_rect
    add x2, x2, #32
    bl draw_rect
    add x2,x2,#8
    bl draw_rect
    sub x2,x2,#36
    mov w5,w29
    

    //fila 5 de pixeles
    //Relleno Nube(Blanco)
    add x1,x1, #4
    mov x4,#32
    bl draw_rect
    add x2,x2,#36
    mov x4,#4
    bl draw_rect
    //Bordes(Negro)
    sub x2,x2,#40
    mov w5,w12
    bl draw_rect
    add x2,x2,#36
    bl draw_rect
    add x2,x2, #8
    bl draw_rect
    sub x2,x2,#4
    mov w5,w29


    //fila 6 de pixeles
    //Relleno Nube(Blanco)
    sub x2,x2, #36
    add x1,x1, #4
    mov x4,#44
    bl draw_rect
    //Bordes(Negro)
    sub x2, x2 , #4
    mov x4, #4
    mov w5,w12
    bl draw_rect
    add x2,x2,#48
    bl draw_rect
    sub x2,x2, #44
    mov w5,w29
   

    //fila 7 de pixeles
    //Relleno Nube(Blanco)
    add x1,x1,#4
    sub x2,x2, #4
    mov x4,#48
    bl draw_rect
    //Bordes(Negro)
    sub x2,x2,#4
    mov x4,#4
    mov w5,w12
    bl draw_rect
    add x2,x2,#52
    bl draw_rect
    sub x2,x2, #48
    mov w5,w29

    //fila 8 de pixeles
    //Relleno Nube(Blanco)
    add x1,x1,#4
    sub x2,x2,#4
    mov x4,#52
    bl draw_rect
    //bordes(Negro)
    sub x2,x2,#4
    mov x4,#4
    mov w5,w12
    bl draw_rect
    add x2,x2,#56
    bl draw_rect
    sub x2,x2,#52
    mov w5,w29
    
    //fila 9 de pixeles
    //Relleno Nube(Blanco)
    add x1,x1,#4
    sub x2,x2,#4
    mov x4,#60
    bl draw_rect
    //bordes(Negro)
    sub x2,x2,#12
    mov x4,#12
    mov w5,w12
    bl draw_rect
    add x2,x2,#72
    mov x4,#4
    bl draw_rect
    add x2,x2,#12
    bl draw_rect
    sub x2,x2,#72
    mov w5,w29

    //fila 10 de pixeles
    //Relleno Nube(Blanco)
    add x1,x1,#4
    sub x2,x2,#12
    mov x4,#72
    bl draw_rect
    add x2,x2,#84
    mov x4,#4
    bl draw_rect
    //bordes(Negro)
    sub x2,x2,#88
    mov x4,#4
    mov w5,w12
    bl draw_rect
    add x2,x2,#76
    mov x4,#12
    bl draw_rect
    add x2,x2,#16
    mov x4,#4
    bl draw_rect
    sub x2,x2,#88
    mov w5,w29

    //fila 11 de pixeles
    //Relleno Nube(Blanco)
    add x1,x1,#4
    sub x2,x2,#4
    mov x4,#80
    bl draw_rect
    add x2,x2,#84
    mov x4,#8
    bl draw_rect
    //bordes(Negro)
    sub x2,x2, #84
    sub x2 ,x2, #4
    mov x4, #4
    mov w5,w12
    bl draw_rect
    add x2,x2,#4
    add x2,x2,#80
    mov x4,#4
    bl draw_rect
    add x2,x2,#12
    bl draw_rect
    mov w5,w29
    sub x2,x2,#92



    //fila 12 de pixeles
    //Relleno Nube(Blanco)
    add x1,x1,#4
    sub x2,x2,#8
    mov x4,#100
    bl draw_rect
    //bordes(Negro)
    add x2,x2,#100
    mov x4,#12
    mov w5,w12
    bl draw_rect
    sub x2,x2,#100
    mov w5,w29

    //fila 13 de pixeles
    //Relleno Nube(Blanco)
    add x1,x1,#4
    mov x4,#104
    bl draw_rect
    add x2,x2,#108
    mov x4,#4
    bl draw_rect
    //bordes(Negro)
    sub x2,x2,#120
    mov x4,#12
    mov w5,w12
    bl draw_rect
    add x2,x2,#116
    mov x4,#4
    bl draw_rect
    add x2,x2,#8
    bl draw_rect
    sub x2,x2,#4
    mov w5,w29

    //fila 14 de pixeles
    //Relleno Nube(Blanco)
    sub x2,x2,#108
    add x1,x1,#4
    sub x2,x2,#8
    mov x4,#120
    bl draw_rect
    //bordes(Negro)
    sub x2 ,x2,#4
    mov x4,#4
    mov w5,w12
    bl draw_rect
    add x2,x2,#124
    bl draw_rect
    sub x2,x2,#120
    mov w5,w29

    //fila 15 de pixeles
    //Relleno Nube(Blanco)
    add x1,x1,#4
    mov x4,#120
    bl draw_rect
    //bordes(Negro)
    sub x2,x2,#4
    mov x4,#4
    mov w5,w12
    bl draw_rect
    add x2,x2,#124
    bl draw_rect
    sub x2,x2,#120
    mov w5,w29

    //fila 16 de pixeles
    //Relleno Nube(Blanco)
    add x1,x1,#4
    add x2,x2,#4
    mov x4,#112
    bl draw_rect
    //bordes(Negro)
    sub x2,x2,#4
    mov x4,#4
    mov w5,w12
    bl draw_rect
    add x2,x2,#116
    bl draw_rect
    sub x2,x2,#112
    mov w5,w29


    //fila 17 de pixeles
    //Relleno Nube(Blanco)
    add x1,x1,#4
    add x2,x2,#4
    mov x4,#104
    bl draw_rect 
    //bordes(Negro)
    sub x2,x2,#4
    mov x4,#4
    mov w5,w12
    bl draw_rect
    add x2,x2,#108
    bl draw_rect
    sub x2,x2,#104
    mov w5,w29

    //fila 18 de pixeles
    //Relleno Nube(Blanco)
    add x1,x1,#4
    add x2,x2,#4
    mov x4,#104
    bl draw_rect
    //bordes(Negro)
    sub x2,x2,#4
    mov x4,#4
    mov w5,w12
    bl draw_rect
    add x2,x2,#108
    bl draw_rect
    sub x2,x2,#104
    mov w5,w29

    //fila 19 de pixeles
    //Relleno Nube(Blanco)
    add x1,x1,#4
    add x2,x2,#4
    mov x4,#104
    bl draw_rect
    //bordes(Negro)
    sub x2,x2,#4
    mov x4,#4
    mov w5,w12
    bl draw_rect
    add x2,x2,#108
    bl draw_rect
    sub x2,x2,#104
    mov w5,w29

    //fila 20 de pixeles
    //Relleno Nube(Blanco)
    add x1,x1,#4
    mov x4,#104
    bl draw_rect
    //bordes(Negro)
    sub x2,x2,#4
    mov x4,#4
    mov w5,w12
    bl draw_rect
    add x2,x2,#4
    mov w5,w29


    //fila 21 de pixeles
    //Relleno Nube(Blanco)
    add x1,x1,#4
    add x2,x2,#16
    mov x4,#80
    bl draw_rect
    //bordes(Negro)
    sub x2,x2,#16
    mov x4,#16
    mov w5,w12
    bl draw_rect
    add x2,x2,#96
    mov x4,#8
    bl draw_rect
    sub x2,x2,#80
    mov w5,w29

    //fila 22 de pixeles
    //Relleno Nube(Blanco)
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
    //bordes(Negro)
    sub x2,x2,#68
    mov x4,#4
    mov w5,w12
    bl draw_rect
    add x2,x2,#28
    bl draw_rect
    add x2,x2,#36
    bl draw_rect
    add x2,x2,#12
    bl draw_rect
    sub x2,x2,#8
    mov w5,w29

    //fila 23 de pixeles
    //Relleno Nube(Blanco)
    sub x2,x2,#64
    add x1,x1,#4
    add x2,x2,#8
    mov x4,#12
    bl draw_rect
    add x2,x2,#28
    mov x4,#16
    bl draw_rect
    //bordes(Negro)
    sub x2,x2,#36
    mov x4,#8
    mov w5,w12
    bl draw_rect
    add x2,x2,#20
    mov x4,#16
    bl draw_rect
    add x2,x2,#32
    mov x4,#20
    bl draw_rect

    //fila 24 de pixeles
    //bordes(Negro)
    add x1,x1,#4
    sub x2,x2,#44
    mov x4,#12
    bl draw_rect
    add x2,x2,#28
    mov x4,#16
    bl draw_rect

   






LDR x30, [sp], #16     // Restaura LR al salir
ret
