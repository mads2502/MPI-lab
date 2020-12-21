;16bit addition
assume cs:code, ds:data
data segment
       opr1 dw 9999h
       opr2 dw 8111h
       sum dw 0000h
       carry db 00h
data ends
code segment
       org 0100h
start: mov ax,data
       mov ds,ax
       mov ax,opr1
       mov bx,opr2
       mov ch,00h
       add ax,bx
       jnc here
       inc ch
here:  mov sum,ax
       mov carry,ch
       int 3
       code ends
end start
       
       

       
       