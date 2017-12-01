data segment
n1 dw 0004h
n2 dw 0006h
data ends
code segment
assume cs:code,ds:data
start:
mov ax,data
mov ds,ax
mov ax,n1
mov bx,n2
t1:mov cx,bx
mov dx,0000h
div bx
mov ax,bx
mov bx,dx

cmp bx,0
jnz t1
mov ax,n1
mov bx,n2
mul bx
div cx
code ends 
end start

