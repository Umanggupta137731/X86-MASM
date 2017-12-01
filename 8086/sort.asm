data segment
n1 dw 1000h,2000h,5000h,3000h,1500h
count equ 0005h
data ends
code segment
assume cs:code,ds:data
start:
mov ax,data
mov ds,ax
mov bx,count
mov si,offset n1
dec bx
t1:
mov cx,bx
mov di,offset n1
t2:
mov ax,[di]
mov dx,[di+02h]
cmp ax,dx
jnc t3
xchg [di],ax
xchg  ax,[di+02h]
xchg [di],ax
t3:
inc di
inc di
dec cx
jnz t2
dec bx
jnz t1
mov ax,[si]
mov bx,[si+02h]
mov cx,[si+04h]
mov dx,[si+06h]
mov sp,[si+08h]
mov bp,[si+0ah]
code ends
end start