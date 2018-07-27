.model small
.data
huruf db 'Aaaaaaaaaaaaaaaaaaaa'
.code
.startup                      

lea bx,huruf
mov al,0
mov cx,20

again:  
mov dx,[bx]
cmp dl,'A'
je tambah
cmp dl,'a' 
je tambah
jmp continue

continue:
inc bx
cmp cx,1
je habis
loop again

tambah:
inc al
jmp continue

habis:
;Nilai AX akan berubah ketika diberi
;interrupt untuk exit
.exit 
end
