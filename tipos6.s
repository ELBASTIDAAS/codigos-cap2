//@author   Bastidas Verdin Miguel Antonio
//@Date     01/12/2021

.data
		var1 : .asciz " La suma es %lld \ n"
		var2 : .word 1600000000, - 100, 800000000, - 50, 200
.text
.global main
/* Salvamos registros */
main : 
		push { r4, r5, r6, lr }
		/* Inicializamos variables y apuntamos r4 a var2 */
		mov r5, # 5
		mov r2, # 0
		mov r3, # 0
		ldr r4, = var2
		/* Bucle que hace la suma */
		bucle : ldr r0, [ r4 ] , # 4
		mov r1, r0, ASR # 31
		adds r2, r2, r0
		adc r3, r3, r1
		subs r5, r5, #1
		bne bucle
		/* Imprimimos resultado */
		ldr r0, = var1
		bl printf
		/* Recuperamos registros y salimos */
		pop { r4, r5, r6, lr }
		bx lr
