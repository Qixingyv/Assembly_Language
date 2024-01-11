assume cs:codesg,ss:stacksg,ds:datasg

stacksg segment
	dw 0,0,0,0,0,0,0,0
stacksg ends

datasg segment
	db '1. display      '
	db '2. brows        '
	db '3. replace      '
	db '4. modify       '
datasg ends

codesg segment

start:	mov ax,datasg
	mov ds,ax
	mov bx,0
	mov ax,stacksg
	mov ss,ax
	mov sp,0010H
	mov cx,4

s:	push cx
	mov cx,4
	mov si,3

s0:	mov al,[bx+si]
	and al,11011111b
	mov [bx+si],al

	inc si
	loop s0

	pop cx
	add bx,0010H
	loop s

	mov ax,4c00H
	int 21h
	
codesg ends

end start