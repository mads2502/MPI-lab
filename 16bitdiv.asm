;16 bit division
assume cs:code, ds:data
data segment
       opr1 dw 9999h
       opr2 dw 1111h
       result dw ?
       rem dw ?
       
data ends
code segment
       org 0100h
start: mov ax,data
       mov ds,ax
       mov ax, opr1
       mov dx,0000h
       mov bx,opr2
       div bx
       mov result,ax
       mov rem,dx
       int 3
       code ends
end start