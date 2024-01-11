assume cs:codesg

codesg segment

	mov ax,0200H
	mov ds,ax

	mov cx,0040H
	mov bx,0
	
s:	mov ds:[bx],bl
	inc bx
	loop s

	mov ax,4c00h
	int 21h

codesg ends

end