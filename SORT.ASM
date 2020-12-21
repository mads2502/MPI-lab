assume cs:code,ds:data
data segment
  opr1 db 04h,01h,07h,03h
data ends
extra segment
 opr3 db ?
extra ends
code segment
  org 0100h
start:
  mov ax,data
  mov ds,ax
  mov ax,extra
  mov es,ax
  mov si,offset opr1
  mov di,offset opr3
  mov bl,00h
  mov cl,04h
  clc
sort:  mov al,[si]
       inc si
       cmp al,[si]    ;comparing i and i+1 
       jb here        ;if val(i)>val(i+1) jump
       xchg al,[si]
       
here:  mov [si-1],al
       inc si
       loop sort
end start
  