Nombre y apellido 
Integrante 1: Fátima Belén Insaurralde 
Integrante 2: Adriana Yackelyn Jimenez
Integrante 3: Alexis Juncos Popea
Integrante 4: Agustina Belén Olivera

Descripción ejercicio 1: 

   Se genera una imagen estática estilo videojuego retro con Mario, un Goomba, un tubo verde, bloques, nubes y una moneda flotante. Todos los elementos están dispuestos sobre un fondo celeste, y el texto "OdC 2025" se muestra integrado con el piso.

Descripción ejercicio 2:

   Se crea una animación en la que Mario camina hacia un tubo verde, salta sobre él y reaparece del lado izquierdo de la pantalla. Este ciclo se repite infinitamente, mostrando los movimientos de Mario.

Instrucciones ARMv8 utilizadas y justificación:

MOV (move): Se usó la instrucción MOV para cargar valores inmediatos en los registros, como el valor del color o las coordenadas del centro de los círculos.

CMP (compare): La instrucción CMP fue utilizada para comparar registros y tomar decisiones, como por ejemplo, en los bucles de dibujo de las figuras, donde se compara el contador de las coordenadas con los límites de la pantalla (480 y 640 píxeles).

MUL (multiply): Se utilizó para simplificar y acelerar cálculos como coordenadas y distancias (por ejemplo, en círculos o animaciones).

STR (store) y LDR (load): Se utilizaron para guardar y restaurar el registro de enlace (x30) al entrar y salir de subrutinas. Esto permite el uso correcto de la pila y asegura que se pueda retornar correctamente desde subrutinas anidadas.