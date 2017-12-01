data segment
n dw 1023h
data ends
code segment
assume cs:code,ds:data
start:
mov ax,data
mov ds,ax
mov cx,0004h
mov dx,0000h
mov bx,n
t:
mov ax,000fh
and ax,bx
mov si,0002h
div si
cmp dx,0000h
jz t1
inc sp
ror bx,1
ror bx,1
ror bx,1
ror bx,1
loop t
jmp t2
t1:
inc bp
ror bx,1
ror bx,1
ror bx,1
ror bx,1
loop t
t2:
mov ah,02h
int 21h
mov ah,4ch
int 21h
code ends
end start
