assume cs:code,ds:data
data segment
   n db 05h
   res db ?
data ends
code segment
   org 0100h
start:
   mov cx,n
   mov ax,01h
   mov dx,00h
   loop1:
         mul cx
   loop loop1
   mov res,dx:ax
   int 3
code ends
end start

   
         