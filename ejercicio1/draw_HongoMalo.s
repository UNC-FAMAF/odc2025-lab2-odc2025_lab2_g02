.text 
.globl draw_HongoMalo

draw_HongoMalo:

STR x30, [sp, #-16]!   // Guarda el LR en la pila

    // -------------------------
    // Dibujo de Goomba
    // -------------------------

    // ----Pies de Goomba----
    mov x0, x20
    mov x1, #380   //y
    mov x2, #300  //x
    mov x3, #4   //alto del rect
    mov x4, #10   // ancho
    mov w5, w12   // color
    bl draw_rect
   
    add x2, x2, #15  // mueve x a la derecha
    bl draw_rect

    sub x1, x1, #3   //sube arriba
    sub x2, x2, #18  //se deplaza a izquierda
    mov x4, #30   // ancho
    bl draw_rect 

    // ----Cuerpo de Goomba----
    sub x1, x1, #3       // y = 374

    // Primer rectángulo negro (3x12)
    mov x2, #297         // x inicial (mismo del rectángulo anterior)
    mov x3, #3           // alto
    mov x4, #12          // ancho
    mov w5, w12          // color negro
    bl draw_rect

    // Segundo rectángulo marrón claro (3x6)
    add x2, x2, #12      // desplazamos x para el siguiente
    mov x4, #6           // ancho
    mov w5, w25          // color marrón claro
    bl draw_rect

    // Tercer rectángulo negro (3x12)
    add x2, x2, #6       // desplazamos x para el siguiente
    mov x4, #12          // ancho
    mov w5, w12          // color negro
    bl draw_rect

    sub x1, x1, #3       // y = 371

    // Primer rectángulo negro (3x6)
    mov x2, #301         // x inicial
    mov x3, #3           // alto
    mov x4, #6           // ancho
    mov w5, w12          // color negro
    bl draw_rect

    // Segundo rectángulo marrón claro (3x10)
    add x2, x2, #6       // x = 303
    mov x4, #10
    mov w5, w25
    bl draw_rect

    // Tercer rectángulo negro (3x6)
    add x2, x2, #10      // x = 313
    mov x4, #6
    mov w5, w12
    bl draw_rect	
	
    sub x1, x1, #3       // y = 368

    mov x2, #305         // x inicial (agregado el negro a la izquierda)
    mov x3, #3           // alto
    mov x4, #2           // ancho
    mov w5, w12          // negro
    bl draw_rect

    add x2, x2, #2       // x = 305
    mov x4, #10
    mov w5, w25          // marrón claro
    bl draw_rect

    add x2, x2, #10      // x = 315
    mov x4, #2
    mov w5, w12          // negro
    bl draw_rect

    sub x1, x1, #3       // y = 365

    mov x2, #299         // x inicial (ajustado para centrar)
    mov x3, #3           // alto
    mov x4, #8           // ancho
    mov w5, w12          // negro
    bl draw_rect

    add x2, x2, #8       // x = 307
    mov x4, #10
    mov w5, w25          // marrón claro
    bl draw_rect
	
	add x2, x2, #10      // x = 317
    mov x4, #8
    mov w5, w12          // negro
    bl draw_rect
	
	// ----Cabeza de Goomba----
    sub x1, x1, #3       // y = 362

    mov x2, #297         // x inicial ajustado para centrar los 24 px
    mov x3, #3           // alto
    mov x4, #2           // ancho
    mov w5, w12          // negro
    bl draw_rect

    add x2, x2, #2       // x = 299
    mov x4, #27
    mov w5, w24          // marrón oscuro
    bl draw_rect

    add x2, x2, #27      // x = 
    mov x4, #2
    mov w5, w12          // negro
    bl draw_rect

    // ----Cabeza y ojos de Goomba---- 
    sub x1, x1, #3       // y = 359

    mov x2, #296         // x inicial ajustado para total de 32 px
    mov x3, #3           // alto

    // Rectángulo negro (3x2)
    mov x4, #2
    mov w5, w12
    bl draw_rect

    // Rectángulo marrón oscuro (3x6)
    add x2, x2, #2       // x = 299
    mov x4, #6
    mov w5, w24
    bl draw_rect

    // Rectángulo blanco (3x6)
    add x2, x2, #6       // x = 305
    mov x4, #6
    mov w5, w26
    bl draw_rect

    // Rectángulo marrón oscuro (3x6)
    add x2, x2, #6       // x = 311
    mov x4, #6
    mov w5, w24
    bl draw_rect

    // Rectángulo blanco (3x6)
    add x2, x2, #6       // x = 317
    mov x4, #6
    mov w5, w26
    bl draw_rect

    // Rectángulo marrón oscuro (3x6)
    add x2, x2, #6       // x = 323
    mov x4, #6
    mov w5, w24
    bl draw_rect

    // Rectángulo negro (3x2)
    add x2, x2, #6       // x = 329
    mov x4, #2
    mov w5, w12
    bl draw_rect
	
    sub x1, x1, #3       // y = 356

    mov x2, #296         // x inicial ajustado para total de 32 px
    mov x3, #3           // alto

    // Rectángulo negro (3x2)
    mov x4, #2
    mov w5, w12
    bl draw_rect

    // Rectángulo marrón oscuro (3x6)
    add x2, x2, #2       // x = 298
    mov x4, #6
    mov w5, w24
    bl draw_rect

    // Rectángulo blanco (3x2)
    add x2, x2, #6       // x = 304
    mov x4, #2
    mov w5, w26
    bl draw_rect

    // Rectángulo negro (3x2)
    add x2, x2, #2       // x = 306
    mov x4, #2
    mov w5, w12
    bl draw_rect

    // Rectángulo blanco (3x2)
    add x2, x2, #2       // x = 308
    mov x4, #2
    mov w5, w26
    bl draw_rect

    // Rectángulo marrón oscuro (3x6)
    add x2, x2, #2       // x = 310
    mov x4, #6
    mov w5, w24
    bl draw_rect

    // Rectángulo blanco (3x2)
    add x2, x2, #6       // x = 316
    mov x4, #2
    mov w5, w26
    bl draw_rect

    // Rectángulo negro (3x2)
    add x2, x2, #2       // x = 318
    mov x4, #2
    mov w5, w12
    bl draw_rect

    // Rectángulo blanco (3x2)
    add x2, x2, #2       // x = 320
    mov x4, #2
    mov w5, w26
    bl draw_rect

    // Rectángulo marrón oscuro (3x6)
    add x2, x2, #2       // x = 322
    mov x4, #6
    mov w5, w24
    bl draw_rect

    // Rectángulo negro (3x2)
    add x2, x2, #6       // x = 328
    mov x4, #2
    mov w5, w12
    bl draw_rect
	
    sub x1, x1, #3       // y = 353

    mov x2, #298         // x inicial ajustado
    mov x3, #3           // alto

    // Rectángulo negro (3x2)
    mov x4, #2
    mov w5, w12
    bl draw_rect

    // Rectángulo marrón oscuro (3x4)
    add x2, x2, #2       // x = 300
    mov x4, #4
    mov w5, w24
    bl draw_rect

    // Rectángulo blanco (3x2)
    add x2, x2, #4       // x = 304
    mov x4, #2
    mov w5, w26
    bl draw_rect

    // Rectángulo negro (3x14) ← actualizado
    add x2, x2, #2       // x = 306
    mov x4, #14
    mov w5, w12
    bl draw_rect

    // Rectángulo blanco (3x2)
    add x2, x2, #14      // x = 320
    mov x4, #2
    mov w5, w26
    bl draw_rect

    // Rectángulo marrón oscuro (3x4)
    add x2, x2, #2       // x = 322
    mov x4, #4
    mov w5, w24
    bl draw_rect

    // Rectángulo negro (3x2)
    add x2, x2, #4       // x = 326
    mov x4, #2
    mov w5, w12
    bl draw_rect
	 
    sub x1, x1, #3       // y = 350

    mov x2, #298         // x inicial
    mov x3, #3           // alto

    // Rectángulo negro (3x2)
    mov x4, #2
    mov w5, w12
    bl draw_rect

    // Rectángulo marrón oscuro (3x4)
    add x2, x2, #2       // x = 302
    mov x4, #4
    mov w5, w24
    bl draw_rect

    // Rectángulo blanco (3x2)
    add x2, x2, #4       // x = 306
    mov x4, #2
    mov w5, w26
    bl draw_rect

    // Rectángulo negro (3x2)
    add x2, x2, #2       // x = 308
    mov x4, #2
    mov w5, w12
    bl draw_rect

    // Rectángulo marrón oscuro (3x10)
    add x2, x2, #2       // x = 310
    mov x4, #10
    mov w5, w24
    bl draw_rect

    // Rectángulo negro (3x2)
    add x2, x2, #10      // x = 320
    mov x4, #2
    mov w5, w12
    bl draw_rect

    // Rectángulo blanco (3x2)
    add x2, x2, #2       // x = 322
    mov x4, #2
    mov w5, w26
    bl draw_rect

    // Rectángulo marrón oscuro (3x4)
    add x2, x2, #2       // x = 324
    mov x4, #4
    mov w5, w24
    bl draw_rect

    // Rectángulo negro (3x2)
    add x2, x2, #4       // x = 328
    mov x4, #2
    mov w5, w12
    bl draw_rect

    // ---Cejas de Goomba---- 
    sub x1, x1, #3       // y = 347

    mov x2, #300         // x inicial
    mov x3, #3           // alto

    // Rectángulo negro (3x6)
    mov x4, #6
    mov w5, w12
    bl draw_rect

    // Rectángulo marrón oscuro (3x15)
    add x2, x2, #6       // x = 307
    mov x4, #14
    mov w5, w24
    bl draw_rect

    // Rectángulo negro (3x6)
    add x2, x2, #14      // x = 322
    mov x4, #6
    mov w5, w12
    bl draw_rect

    // ----Parte de arriba de la cabeza de Goomba----
    sub x1, x1, #3       // y = 344

    mov x2, #302         // x inicial centrado para 24 píxeles
    mov x3, #3           // alto

    // Rectángulo negro (3x2)
    mov x4, #2
    mov w5, w12
    bl draw_rect

    // Rectángulo marrón oscuro (3x20)
    add x2, x2, #2       // x = 305
    mov x4, #18
    mov w5, w24
    bl draw_rect

    // Rectángulo negro (3x2)
    add x2, x2, #18      // x = 325
    mov x4, #2
    mov w5, w12
    bl draw_rect

    sub x1, x1, #3       // y = 341

    mov x2, #304         // x inicial centrado para 18 píxeles
    mov x3, #3           // alto

    // Rectángulo negro (3x2)
    mov x4, #2
    mov w5, w12
    bl draw_rect

    // Rectángulo marrón oscuro (3x14)
    add x2, x2, #2       // x = 308
    mov x4, #14
    mov w5, w24
    bl draw_rect

    // Rectángulo negro (3x2)
    add x2, x2, #14      // x = 322
    mov x4, #2
    mov w5, w12
    bl draw_rect
	
    sub x1, x1, #3       // y = 338

    mov x2, #306         // x inicial centrado para 24 píxeles
    mov x3, #3           // alto

    // Rectángulo negro (3x10)
    mov x4, #14
    mov w5, w12
    bl draw_rect

LDR x30, [sp], #16     // Restaura LR al salir
RET
