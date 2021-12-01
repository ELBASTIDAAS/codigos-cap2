.data
.text
global .main
main:
		/*Carga el contenido de la memoria a en r1 */
		ldr r1, = a

		/*Carga el contenido de la memoria [r1] en r1*/
		ldr r1, [ r1 ]

		/*Carga el contenido de la memoria b en r2*/
		ldr r2, = b

		/*Carga el contenido de la memoria [r2] en r2*/
		ldr r2, [ r2 ]

		/*Comparamos r1 con r2*/
		cmp r1, r2

		/*Se empieza el salto, teniendo que ser diferentes para que marque "True" y asi hacer "Entonces"
		bne sino
entonces :
		/*r1 toma el valor de 10*/
		r1, #10
/*Saltamos a Final*/
b final
sino :
		/*r1 toma el valor de 5*/
		r1, #5
final : 
		/*Imprimimos*/
		bx lr