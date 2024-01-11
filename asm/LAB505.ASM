assume cs:code

a segment
	db 1,2,3,4,5,6,7,8
a ends

b segment 
	db 1,2,3,4,5,6,7,8
b ends

c segment
	db 0,0,0,0,0,0,0,0
c ends

code segment

start:	mov ax,c
	mov ds,ax

	mov ax,a
	mov es,ax

	mov cx,8
	mov bx,0
	mov dx,0
	
s:	mov dx,0
	add dl,es:[bx]
	mov ax,b
	mov es,ax
	add dl,es:[bx]
	mov ds:[bx],dl
	mov ax,a
	mov es,ax
	inc bx
	loop s
	
	mov ax,4c00h
	int 21h
	

code ends

end start