data segment
n1 db 10h,20h,30h,40h
count equ 04h
data ends
code segment
assume cs:code,ds:data
start:
mov ax,data
mov ds,ax
mov cx,count
mov bx,offset n1
mov ax,0000h
t1:
add ax,[bx]
inc bx
dec cx
jnz t1
mov bx,ax
mov cx,count
div cx
code ends
end start