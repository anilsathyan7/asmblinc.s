org 0xf800
   start:
   mov.w #0x5a80, &0x0120
   
    
   mov.b #1,&0x22
   mov.b #0,&0x21
   mov.w #0x0000,R6
   mov.w #0xffff,R7

  L1:
        add.w #1,R6
        cmp.w R6,R7
        jl L1
  
  xor.b #0x1,&0x21
  mov.w #0x0000,R6   
  jmp L1
 
   
 org 0xfffe
 dw start



