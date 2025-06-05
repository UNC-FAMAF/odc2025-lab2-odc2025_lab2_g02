.text 
.globl draw_clouds

draw_clouds:

STR x30, [sp, #-16]!   // Guarda el LR en la pila

    //NUBE 1

    mov x0,x20  //framebuffer inicial
    mov x10, #20 //y inicial
    mov x11, #100 //x inicial
    mov x12, #4 // alto
    bl draw_cloudshape

    //NUBE 2
    mov x0,x20  //framebuffer inicial
    mov x10, #20 //y inicial
    mov x11, #330 //x inicial
    mov x12, #4 // alto
    bl draw_cloudshape

    //NUBE 3

    mov x0,x20  //framebuffer inicial
    mov x10, #20 //y inicial
    mov x11, #550 //x inicial
    mov x12, #4 // alto
    bl draw_cloudshape





LDR x30, [sp], #16     // Restaura LR al salir
ret
