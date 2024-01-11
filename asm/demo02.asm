assume cs:codesg

codesg segment

	mov ax,123
	mov cx,235
s:	add ax,123	
	loop s

	mov ax,4c00H
	int 21H

codesg ends

end