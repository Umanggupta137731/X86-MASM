data segment
n1 dw 0025h
data ends
code segment
assume cs:code,ds:data
start:
mov ax,data
mov ds,ax
mov ax,n1
aaa
mov dx,0
mov cx,0009h
aaa
mul cx
aaa
add ax,0
aaa

daa
mov dx,0
mov cx,0005h
div cx
daa
add al,20h
daa
adc al,0
daa
xchg ah,al
adc al,0
daa
xchg ah,al


code ends
end start