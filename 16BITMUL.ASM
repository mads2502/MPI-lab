;16 bit division
assume cs:code, ds:data
data segment
       opr1 dw 9999h
       opr2 dw 1111h
       result dd ?
       
       
data ends
code segment
       org 0100h
start: mov ax,data
       mov ds,ax
       mov ax, opr1
       mov dx,0000h
       mov bx,opr2
       mul bx
       mov word ptr result,ax
       mov word ptr result+2,dx
       int 3
       code ends
end start