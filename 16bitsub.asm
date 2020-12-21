;16bit subtraction
assume cs:code, ds:data
data segment
       opr1 dw 9999h
       opr2 dw 1111h
       sum dw 0000h
       brrw db 00h
data ends
code segment
       org 0100h
start: mov ax,data
       mov ds,ax
       mov ax,opr1
       mov bx,opr2
       mov ch,00h
       sub ax,bx
       jnc here
       inc ch
       neg ax
here:  mov sum,ax
       mov brrw,ch
       int 3
       code ends
end start
       
       