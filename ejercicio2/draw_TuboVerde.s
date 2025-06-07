.text
.globl draw_TuboVerde

draw_TuboVerde:

    SUB SP, SP, 80	
    STUR x30,  [SP, 72 ]									
	STUR x20, [SP, 64]
	STUR x21, [SP, 56]
	STUR x22, [SP, 48]
	STUR x23, [SP, 40]
	STUR x24, [SP, 32]
	STUR x25, [SP, 24]
	STUR x26, [SP, 16]
    STUR x27, [SP, 8 ]
    STUR X11, [SP, 0]
    mov x0, x20

    // Verde (Tubo)
    movz x11, 0xCE21, lsl 0
    movk x11, 0xFF27, lsl 16     //0XFF27CE21
    mov  w11, w11

    // -----------------------------
    // CUERPO DEL TUBO (2 COLORES)
    // -----------------------------
    mov x20, #288         // y cuerpo
    mov x21, #532         // x cuerpo ajustado
    mov x22, #96          // alto cuerpo
    mov x23, #80          // ancho cuerpo 

    // Mitad izquierda (verde claro)
    mov x1, x20
    mov x2, x21
    mov x3, x22
    mov x4, #40
    mov w5, w19
    bl draw_rect

    // Mitad derecha (verde oscuro)
    mov x1, x20
    mov x2, #572
    mov x3, x22
    mov x4, #40
    mov w5, w11
    bl draw_rect

    // Raya de sombra izquierda (verde oscuro)
    mov x1, x20
    mov x2, #535
    mov x3, x22
    mov x4, #3
    mov w5, w11
    bl draw_rect

    // Raya de brillo derecha (verde claro)
    mov x1, x20
    mov x2, #610
    mov x3, x22
    mov x4, #2
    mov w5, w19
    bl draw_rect

    // Bordes del tubo (negro)
    // Superior
    mov x1, x20
    mov x2, x21
    mov x3, #3
    mov x4, x23
    mov w5, w12
    bl draw_rect

    // Izquierdo
    mov x1, x20
    mov x2, x21
    mov x3, x22
    mov x4, #3
    mov w5, w12
    bl draw_rect

    // Derecho
    mov x1, x20
    mov x2, #611
    mov x3, x22
    mov x4, #3
    mov w5, w12
    bl draw_rect

    // ----------------------
    // BOCA DEL TUBO
    // ----------------------

    mov x24, #267         // y boca
    mov x25, #520         // x boca ajustado
    mov x26, #21          // alto boca
    mov x27, #100         // ancho boca 

    // Mitad izquierda (verde claro)
    mov x1, x24
    mov x2, x25
    mov x3, x26
    mov x4, #50
    mov w5, w19
    bl draw_rect

    // Mitad derecha (verde oscuro)
    mov x1, x24
    mov x2, #570
    mov x3, x26
    mov x4, #55
    mov w5, w11
    bl draw_rect

    // Raya de sombra izquierda (verde oscuro)
    mov x1, x24
    mov x2, #523
    mov x3, x26
    mov x4, #3
    mov w5, w11
    bl draw_rect

    // Raya de brillo derecha (verde claro)
    mov x1, x24
    mov x2, #621
    mov x3, x26
    mov x4, #2
    mov w5, w19
    bl draw_rect

    // Bordes de la boca del tubo (negro)
    // Superior
    mov x1, x24
    mov x2, x25
    mov x3, #3
    mov x4, 105
    mov w5, w12
    bl draw_rect

    // Inferior
    mov x1, #287
    mov x2, x25
    mov x3, #3
    mov x4, #105
    mov w5, w12
    bl draw_rect

    // Izquierda
    mov x1, x24
    mov x2, x25
    mov x3, x26
    mov x4, #3
    mov w5, w12
    bl draw_rect

    // Derecha
    mov x1, x24
    mov x2, #622
    mov x3, x26
    mov x4, #3
    mov w5, w12
    bl draw_rect

    mov x20,x0



    LDUR x11, [SP, 0]
    LDUR x27, [SP, 8]
    LDUR x26, [SP, 16]
    LDUR x25, [SP, 24]
    LDUR x24, [SP, 32]
    LDUR x23, [SP, 40]
    LDUR x22, [SP, 48]
    LDUR x21, [SP, 56]
    LDUR x20, [SP, 64]

    LDUR X30, [SP, 72]
    ADD SP, SP, 80
    RET
