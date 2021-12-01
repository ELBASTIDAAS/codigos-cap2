//@author   Bastidas Verdin Miguel Antonio
//@Date     01/12/2021

.data
var1 : 		.asciz " %d\ 012 "
.text
.global main
main : 
		push { r4, lr }

		/*Se le asigna el valor 0 a r4*/
		mov r4, # 0
.L2 : 
		/*Se le asigna el valor de r4 a r1*/
		mov r1, r4

		/**Carga el contenido de la memoria var1 a r0*/
		ldr r0, = var1

		/*Se le asigna a r4 en la suma de r4+1*/
		add r4, r4, # 1
		
		/*Salta a printf*/
		bl printf
		/*Compara el valor de 5 con r4*/
		cmp r4, # 5
		
		/*Si la comparacion salio diferente se marcara como true y se saltara a .L2*/
		bne .L2
		
		/*Saca de la pila*/
		pop { r4, pc }
		/*Saca de la pila*/
		pop { r4, lr }
		/*Imprime*/
		bx lr
