.model small
.stack 64

suma macro numero
	mov ax,numero
	add ax,bx
endm

.data
	valor1 db 1
	valor2 db 2
	valor3 db 3
	valor4 db 4
	valor5 db 5
	valor6 db 6
	valor7 db 7
	valor8 db 8
	valor9 db 9
	valor10 db 10

.code

	mov ax,@data
	mov ds,ax
	mov ax,0
	mov bx,0
	
	suma valor1
	suma valor2
	suma valor3
	suma valor4
	suma valor5
	suma valor6
	suma valor7
	suma valor8
	suma valor9
	suma valor10
	
end