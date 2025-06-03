.equ SCREEN_WIDTH,      640
.equ SCREEN_HEIGH,      480
.equ BITS_PER_PIXEL,    32

.equ GPIO_BASE,         0x3f200000
.equ GPIO_GPFSEL0,      0x00
.equ GPIO_GPLEV0,       0x34

.globl main

main:
    mov x20, x0              // framebuffer base en x20

    // -------------------------
    // COLORES (ARGB)
    // -------------------------

    // Celeste (Cielo)
    movz    x10, 0xCEE9, lsl 0
    movk    x10, 0xFF99, lsl 16
    mov     w10, w10

    // Marron (Bloques)
    movz    x13, 0x4513, lsl 0
    movk    x13, 0xFF8B, lsl 16
    mov     w13, w13

    // Verde (Tubo)
    movz    x11, 0xFF00, lsl 0
    movk    x11, 0xFF00, lsl 16
    mov     w11, w11

    // Negro (Bordes)
    movz    x12, 0x0000, lsl 0
    movk    x12, 0xFF00, lsl 16
    mov     w12, w12

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

    // -------------------------
    // FONDO CELESTE (80% superior)
    // -------------------------
    mov x0, x20
    mov x1, #0              // y inicial
    mov x2, #0              // x inicial
    mov x3, #384            // alto (80% de 480)
    mov x4, #SCREEN_WIDTH   // ancho
    mov w5, w10             // color celeste
    bl draw_rect

    // -------------------------
    // PISO DE BLOQUES MARRONES (20% inferior)
    // -------------------------
    mov x0, x20
    mov x1, #384            // y inicial (80% superior de la pantalla)
    mov x2, #0              // x inicial
    mov x3, #96             // alto (20% de 480)
    mov x4, #SCREEN_WIDTH   // ancho
    mov w5, w13             // color marrón
    bl draw_rect

    //---------------
    // Dibujamos lo que hicimos en otros archivos
    // (El orden en el que estan hace que estén en el fondo o no)
    //---------------
    // Comente los que no estan hechos todavía

    bl draw_TuboVerde       // Dibuja el Tubo Verde
    bl draw_bloque          // Dibuja los Bloques en el aire 
    bl draw_Mario           // Dibuja a Mario Bros
    // bl draw_HongoMalo
    // bl draw_Tortuga
    bl draw_Suelo           // Dibuja los detalles del Suelo
    bl draw_OdC2025         // Dibuja OdC2025

    // -------------------------
    // GPIO SETUP
    // -------------------------
    mov x9, GPIO_BASE
    str wzr, [x9, GPIO_GPFSEL0]
    ldr w10, [x9, GPIO_GPLEV0]
    and w11, w10, 0b10
    lsr w11, w11, 1

    // Bucle infinito
InfLoop:
    b InfLoop

