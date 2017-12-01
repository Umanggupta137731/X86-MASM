data segment
n1 dw 1000h,3000h,2000h,2500h
count equ 05h
data ends
code segment
assume cs:code,ds:data
start:
mov ax,data
mov ds,ax
mov cx,count
dec cx

mov si,offset n1
mov bx,[si]
mov dx,[si]
inc si
inc si 
t1:
cmp bx,[si]
jc t2
mov bx,[si]
t2:
cmp dx,[si]
jnc t3
mov dx,[si]
t3:
inc si
inc si
dec cx
jnz t1
code ends
end start