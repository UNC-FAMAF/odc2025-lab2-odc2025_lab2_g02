.text 
.globl draw_Tortuga

draw_Tortuga:
STR x30, [sp, #-16]!   // Guarda el LR en la pila

// Acá agregar el código para dibujar a la tortuga con sus respectivos colores.





LDR x30, [sp], #16     // Restaura LR al salir
RET

