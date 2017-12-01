data segment
n1 dw 1400h
n2 dw 1500h
data ends
code segment
assume cs:code,ds:data
start:
mov ax,data
mov ds,ax
mov ax,n1
mov bx,n2
xchg ax,bx
mov ah,4ch
int 21h
code ends
end start
