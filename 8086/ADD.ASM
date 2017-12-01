assume cs:code, ds:data
data segment
n1 dw 0762h
n2 db 08h
data ends
code segment
start:
mov ax,data
mov ds,ax
xor ax,ax
mov ax,n1
mov cx,0064h
div cx
cmp ah,00h
jz t1
xor ax,ax
mov ax,n1
mov cx,0004h
div cx
cmp ah,00h
jz t2
jmp t3
t1:
xor ax,ax
mov ax,n1
mov cx,0190h
div cx
cmp ah,00h
jnz t3
t2:
xor al,al
mov al,01h
jmp t4
t3:
xor al,al
mov al,02h
t4:
add al,30h
mov dl,al
mov ah,02h
int 21h
mov ah,4ch
int 21h
code ends
end start
