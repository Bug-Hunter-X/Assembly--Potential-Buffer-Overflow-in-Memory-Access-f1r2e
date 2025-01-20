mov ecx, array_size ; Load the array size into ecx
cmp ecx, 0 ; Check if the array is empty
je empty_array ; Jump to the empty_array label if the array is empty
mov eax, [ebx + ecx*4 - 4] ; Accessing array element within bounds
cmp eax, 0 ; Check if the accessed element is 0
jne not_zero ; Jump if the element is not 0
mov dword [ebx + ecx*4 - 4], 0 ; Write to the element within bounds
; ...rest of the code
empty_array:
; Handle empty array case
not_zero:
; Handle the case where the element is not zero