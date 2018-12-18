.model small
.stack 64
.data
	valor db ?
.code
.startup
	mov ah, 01h ;Leer carácter desde el teclado
	int 21h ;Lee primer caracter

	sub al, 30h ;Resto 30H (48Dec) para obtener el numero
	mov valor, al ;Lo guardo en variable valor

	mov ah, 01h ;Leer carácter desde el teclado
	int 21h ;Leo el segundo caracter
	sub al, 30h ;Resto 30H (48Dec) para obtener segundo valor
	add al, valor ;Realizo la suma de los dos valores

	mov dl, al ;Pongo en dl el número a imprimir
	add dl, 30h ;Agrego 30 (48Dec) para obtener el caracter
	mov ah, 02h ;Funcion para imprimir un carácter en pantalla
	int 21h
.exit
end
end