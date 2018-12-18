.model small
.stack 64

saltarLinea macro
	lea dx,salto
	call imprimir
endm

.data
	salto db 10,13, "$"
	mensaje db "Programa que suma 2 numeros", "$"
	instUno db "Ingresa el primer numero a sumar: ", "$"
	instDos db "Ingresa el segundo numero a sumar: ", "$"
	showres db "La suma es: ", "$"
	numero db ?

.code
	inicio:
		mov ax, @data
		mov ds,ax
		lea dx,mensaje
		call imprimir
		saltarLinea
		lea dx,instUno
		call imprimir
		call leer
		saltarLinea
		mov numero,al
		lea dx,instDos
		call imprimir
		call leer
		saltarLinea
		call sumar
		lea dx,showres
		call imprimir
		mov dl,al
		call imprimeChar
		saltarLinea
		jmp salir


	imprimir proc
		mov ah,09
		int 21h
		ret
	imprimir endp

	imprimeChar proc
		mov ah,02
		int 21h
		ret
	imprimeChar endp

	leer proc
		mov ah,01
		int 21h
		sub al,30h
		ret
	leer endp

	sumar proc
		add al,numero
		add al,30h
		ret
	sumar endp


	salir:
		mov ah,4ch
		int 21h

end