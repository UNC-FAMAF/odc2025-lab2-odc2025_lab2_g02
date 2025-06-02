.text 
.globl draw_HongoMalo

draw_HongoMalo:
STR x30, [sp, #-16]!   // Guarda el LR en la pila

// Acá agregar el código para dibujar al Hongo Malo con sus respectivos colores.





LDR x30, [sp], #16     // Restaura LR al salir
RET

