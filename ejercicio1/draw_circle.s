.text
.global draw_circle
draw_circle:
    STR x30, [sp, #-16]!     // Guarda LR

    // Parámetros:
    // x0: framebuffer base
    // x1: centro x
    // x2: centro y
    // x3: radio
    // x4: color

    MOV x9, #0               // y counter
.loop_y:
    CMP x9, #480
    B.GE .end_dcircle

    MOV x10, #0              // x counter
.loop_x:
    CMP x10, #640
    B.GE .next_y

    SUB x11, x10, x1         // x - xc
    SUB x12, x9, x2          // y - yc
    MUL x13, x11, x11        // (x - xc)^2
    MUL x14, x12, x12        // (y - yc)^2
    ADD x15, x13, x14        // distancia^2
    MUL x16, x3, x3          // r^2

    CMP x15, x16
    B.GE .skip_pixel

    MOV x17, #640
    MUL x18, x9, x17         // y * 640
    ADD x18, x18, x10        // y * 640 + x
    LSL x18, x18, #2         // offset en bytes
    ADD x18, x0, x18         // dirección en framebuffer
    STR w4, [x18]            // escribir color

.skip_pixel:
    ADD x10, x10, #1
    B .loop_x

.next_y:
    ADD x9, x9, #1
    B .loop_y

.end_dcircle:
    LDR x30, [sp], #16       // Restaura LR al salir
    RET
	