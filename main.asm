extern  _printDec
extern  _println

        
        section .data
a       dd      0
b       dd      2
c       dd      3
iter    dd      100000000
i       dd      0

        section .text
        global  _start
_start: 

        mov     edx, 0          ; use edx as i
        mov     ebx, dword[b]   ; use ebx as 2*b + c
        add     ebx, ebx
        add     ebx, dword[c]
        mov     eax, 0          ; use eax as a
        mov     ecx, dword[iter]; ecx is loop counter
        
for:    add     eax, ebx        ; a += b*2 + c
        sub     eax, edx        ; a += -i
        inc     edx             ; i++
        loop    for
        
endfor: 
        mov     dword[a], eax
        call    _printDec
        call    _println