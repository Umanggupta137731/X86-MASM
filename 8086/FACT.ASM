data segment
n1 dw 0004h
data ends
code segment
assume cs:code,ds:data
start:
mov ax,data
mov ds,ax
xor ax,ax
mov ax,n1
sub n1,0001h
mov cx,n1
t1:mov bx,n1
mul n1
sub n1,0001h
jnz t1
mov bx,ax
mov ah,02h
int 21h
mov ah,4ch
int 21h
code ends
end start
