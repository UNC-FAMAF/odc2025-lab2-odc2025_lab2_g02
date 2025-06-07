.text
.global draw_circle
draw_circle:
    SUB SP, SP, 96             // Reservamos espacio (8 * 12 registros = 96 bytes)
    STUR x30, [sp, 88]         // Guarda LR (x30)
    STUR x9,  [sp, 80]
    STUR x10, [sp, 72]
    STUR x11, [sp, 64]
    STUR x12, [sp, 56]
    STUR x13, [sp, 48]
    STUR x14, [sp, 40]
    STUR x15, [sp, 32]
    STUR x16, [sp, 24]
    STUR x17, [sp, 16]
    STUR x18, [sp, 8]

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
    LDUR x18, [sp, 8]
    LDUR x17, [sp, 16]
    LDUR x16, [sp, 24]
    LDUR x15, [sp, 32]
    LDUR x14, [sp, 40]
    LDUR x13, [sp, 48]
    LDUR x12, [sp, 56]
    LDUR x11, [sp, 64]
    LDUR x10, [sp, 72]
    LDUR x9,  [sp, 80]
    LDUR x30, [sp, 88]
    ADD SP, SP, 96     
    RET
	