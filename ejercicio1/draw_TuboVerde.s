.text
.globl draw_TuboVerde

draw_TuboVerde:

    STR x30, [sp, #-16]!
    mov x0, x20

    // -----------------------------
    // CUERPO DEL TUBO (2 COLORES)
    // -----------------------------
    mov x20, #288         // y cuerpo
    mov x21, #540         // x cuerpo
    mov x22, #96          // alto cuerpo
    mov x23, #64          // ancho cuerpo

    // Mitad izquierda (verde claro)
    mov x1, x20
    mov x2, x21
    mov x3, x22
    mov x4, #32
    mov w5, w19
    bl draw_rect

    // Mitad derecha (verde oscuro)
    mov x1, x20
    mov x2, #572
    mov x3, x22
    mov x4, #32
    mov w5, w11
    bl draw_rect

    // Raya de sombra izquierda (verde oscuro)
    mov x1, x20
    mov x2, #544
    mov x3, x22
    mov x4, #2
    mov w5, w11
    bl draw_rect

    // Raya de brillo derecha (verde claro)
    mov x1, x20
    mov x2, #600
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
    mov x2, #601
    mov x3, x22
    mov x4, #3
    mov w5, w12
    bl draw_rect

    // ----------------------
    // BOCA DEL TUBO
    // ----------------------

    mov x24, #267         // y boca
    mov x25, #530         // x boca
    mov x26, #21          // alto boca
    mov x27, #84          // ancho total boca

    // Mitad izquierda (verde claro)
    mov x1, x24
    mov x2, x25
    mov x3, x26
    mov x4, #42
    mov w5, w19
    bl draw_rect

    // Mitad derecha (verde oscuro)
    mov x1, x24
    mov x2, #572
    mov x3, x26
    mov x4, #42
    mov w5, w11
    bl draw_rect

    // Raya de sombra izquierda (verde oscuro)
    mov x1, x24
    mov x2, #534
    mov x3, x26
    mov x4, #2
    mov w5, w11
    bl draw_rect

    // Raya de brillo derecha (verde claro)
    mov x1, x24
    mov x2, #608
    mov x3, x26
    mov x4, #2
    mov w5, w19
    bl draw_rect

    // Bordes de la boca del tubo (negro)
    // Superior
    mov x1, x24
    mov x2, x25
    mov x3, #3
    mov x4, x27
    mov w5, w12
    bl draw_rect

    // Inferior
    mov x1, #287
    mov x2, x25
    mov x3, #3
    mov x4, x27
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
    mov x2, #611
    mov x3, x26
    mov x4, #3
    mov w5, w12
    bl draw_rect

    mov x20,x0

    LDR x30, [sp], #16
    RET
	