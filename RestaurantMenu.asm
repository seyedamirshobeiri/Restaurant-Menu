.model small
;-----------------------------------
.stack 32
;-----------------------------------
.data
    ;----MainPage---- 
    MenuName db 'Restaurant Menu','$'
    FirstPart db 'Main Dishes','$'
    SecondPart db 'Desserts','$'
    ThirdPart db 'Drinks','$'   
    
    ;----MainDishesPage---- 
    Title1 db 'Main Dishes','$'
    MainDishes1 db 'Chicken Steak ----> 17 Dollars','$'
    MainDishes2 db 'Beef Steak ----> 20 Dollars','$'
    MainDishes3 db 'Spaghetti ----> 12 Dollars','$'     
    
    ;----DessertsPage----
    Title2 db 'Desserts','$'
    Desserts1 db 'Cherry Pie ----> 9 Dollars','$'
    Desserts2 db 'Cookie Delight ----> 20 Dollars','$'
      
    
    ;----DrinksPage---- 
    Title3 db 'Drinks','$'
    Drinks1 db 'Red Wine ----> 25 Dollars','$'
    Drinks2 db 'Orange Juice ----> 8 Dollars','$'
    Drinks3 db 'Ice Tea ----> 7 Dollars','$'
    Drinks4 db 'Soda ----> 5 Dollars','$'
    
    
    
     
;-----------------------------------
.code 

;--------------------SomeConfiguration---------------------------

     ;-----ChangeBackGroundColor-------------
     MOV AH, 06h    ; Scroll up function
     XOR CX, CX     ; Upper left corner CH=row, CL=column
     MOV DX, 184FH  ; lower right corner DH=row, DL=column 
     MOV BH, 1Eh    ; YellowOnBlue
     INT 10H 



      
    ;-----MouseConfiguration-------------
    ;initialize mouse
    mov ax,0
    int 33h
    
    ;mouse cursor visible
    mov ax,1
    int 33h

;-------------------------------------------------------------------------------------------------------
     

     
      
    
    ;-----MenuTitle-------------
    
    ;INT 10h(02)possition
    ;-------------------------
    mov ah,02h
    
    mov bh,00
    mov dh,0    ;row
    mov dl,35   ;column
    
    INT 10h  
    ;-----------------------
    
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    mov dx,offset MenuName
    INT 21h     
                        
                        
                        
                        
                           
                           
   ;-----FirstPart-------------
    
    ;INT 10h(02)possition
    ;-------------------------
    mov ah,02h
    
    mov bh,00
    mov dh,5    ;row
    mov dl,35   ;column
    
    INT 10h  
    ;-----------------------
    
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    mov dx,offset FirstPart
    INT 21h     
             
             
             
             
             
             
             
   ;-----SecondPart-------------
    
    ;INT 10h(02)possition
    ;-------------------------
    mov ah,02h
    
    mov bh,00
    mov dh,10    ;row
    mov dl,35   ;column
    
    INT 10h  
    ;-----------------------
    
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    mov dx,offset SecondPart
    INT 21h        



         
         
    
      
   ;-----ThirdPart-------------
    
    ;INT 10h(02)possition
    ;-------------------------
    mov ah,02h
    
    mov bh,00
    mov dh,15    ;row
    mov dl,35   ;column
    
    INT 10h  
    ;-----------------------
    
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    mov dx,offset ThirdPart
    INT 21h   
    
    
    
;-------------------------------------------mousePosition-------------------------------------------
    
    ;-----CheckMousePosition----
     mov   ax,03
      
    w: 
     int   33h
     test  bl,1
     jnz   checkPosition 
     jmp  w
    
    ;----afterClick-------------------------- 
     
    CheckPosition:
    
        ;Check x 
        
        cmp cx,279
        jnge w
        cmp cx,350
        jge  w  
               
               
        ;Check y 
        
        
        ;check for main dishes
        cmp dx,41
        jnge w
        cmp dx,49
        jnge maindishes
        
        ;check for Desserts
        cmp dx,80
        jnge w
        cmp dx,89
        jnge Desserts        

        ;check for Drinks
        cmp dx,120
        jnge w
        cmp dx,127
        jnge Drinks
                 
        jmp w  
           
     
    
    ;-----------------------------------------------------------------------------------------------------------------------------------------------  
    
    
     maindishes:
     ;----ClearPage----
       
     MOV AH, 06h    ; Scroll up function 
     XOR AL, AL     ;Clear entire screen
     XOR CX, CX     ; Upper left corner CH=row, CL=column
     MOV DX, 184FH  ; lower right corner DH=row, DL=column 
     MOV BH, 1Eh    ; YellowOnBlue
     INT 10H                         
                       
                       
                       
                       
    ;---------------------------------------------MainDishesPage---------------------------------------------------  
    
    
     
    ;-----Title-------------
    
    ;INT 10h(02)possition
    ;-------------------------
    mov ah,02h
    
    mov bh,00
    mov dh,0    ;row
    mov dl,35   ;column
    
    INT 10h  
    ;-----------------------
    
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    mov dx,offset title1
    INT 21h     
                        
                        
                        
                        
                           
                           
   ;-----FirstPart-------------
    
    ;INT 10h(02)possition
    ;-------------------------
    mov ah,02h
    
    mov bh,00
    mov dh,10    ;row
    mov dl,10   ;column
    
    INT 10h  
    ;-----------------------
    
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    mov dx,offset MainDishes1
    INT 21h     
             
             
             
             
             
             
             
   ;-----SecondPart-------------
    
    ;INT 10h(02)possition
    ;-------------------------
    mov ah,02h
    
    mov bh,00
    mov dh,10    ;row
    mov dl,45   ;column
    
    INT 10h  
    ;-----------------------
    
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    mov dx,offset MainDishes2
    INT 21h        



         
         
    
      
   ;-----ThirdPart-------------
    
    ;INT 10h(02)possition
    ;-------------------------
    mov ah,02h
    
    mov bh,00
    mov dh,15    ;row
    mov dl,30   ;column
    
    INT 10h  
    ;-----------------------
    
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    mov dx,offset MainDishes3
    INT 21h 
    
    jmp Exit  
    
    
    
    
    
    
    
    
    Desserts:
    
    ;----ClearPage----
       
     MOV AH, 06h    ; Scroll up function 
     XOR AL, AL     ;Clear entire screen
     XOR CX, CX     ; Upper left corner CH=row, CL=column
     MOV DX, 184FH  ; lower right corner DH=row, DL=column 
     MOV BH, 1Eh    ; YellowOnBlue
     INT 10H                  
     
     
     
     
     
     
     
    ;---------------------------------------------DessertsPage---------------------------------------------------  
    
    
    
    
    
     
    ;-----Title-------------
    
    ;INT 10h(02)possition
    ;-------------------------
    mov ah,02h
    
    mov bh,00
    mov dh,0    ;row
    mov dl,35   ;column
    
    INT 10h  
    ;-----------------------
    
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    mov dx,offset title2
    INT 21h     
                        
                        
                        
                        
                           
                           
   ;-----FirstPart-------------
    
    ;INT 10h(02)possition
    ;-------------------------
    mov ah,02h
    
    mov bh,00
    mov dh,10    ;row
    mov dl,10   ;column
    
    INT 10h  
    ;-----------------------
    
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    mov dx,offset Desserts1
    INT 21h     
             
             
             
             
             
             
             
   ;-----SecondPart-------------
    
    ;INT 10h(02)possition
    ;-------------------------
    mov ah,02h
    
    mov bh,00
    mov dh,10    ;row
    mov dl,45   ;column
    
    INT 10h  
    ;-----------------------
    
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    mov dx,offset Desserts2
    INT 21h        

    jmp Exit

 
 
 
    
    
    
    Drinks:
    
    ;----ClearPage----
       
     MOV AH, 06h    ; Scroll up function 
     XOR AL, AL     ;Clear entire screen
     XOR CX, CX     ; Upper left corner CH=row, CL=column
     MOV DX, 184FH  ; lower right corner DH=row, DL=column 
     MOV BH, 1Eh    ; YellowOnBlue
     INT 10H                  
     
     
     
     
   ;---------------------------------------------DrinksPage---------------------------------------------------     
   
   
      
    ;-----Title-------------
    
    ;INT 10h(02)possition
    ;-------------------------
    mov ah,02h
    
    mov bh,00
    mov dh,0    ;row
    mov dl,35   ;column
    
    INT 10h  
    ;-----------------------
    
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    mov dx,offset title3
    INT 21h     
                        
                        
                        
                        
                           
                           
   ;-----FirstPart-------------
    
    ;INT 10h(02)possition
    ;-------------------------
    mov ah,02h
    
    mov bh,00
    mov dh,10    ;row
    mov dl,10   ;column
    
    INT 10h  
    ;-----------------------
    
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    mov dx,offset Drinks1
    INT 21h     
             
             
             
             
             
             
             
   ;-----SecondPart-------------
    
    ;INT 10h(02)possition
    ;-------------------------
    mov ah,02h
    
    mov bh,00
    mov dh,10    ;row
    mov dl,45   ;column
    
    INT 10h  
    ;-----------------------
    
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    mov dx,offset Drinks2
    INT 21h        



         
         
    
      
   ;-----ThirdPart-------------
    
    ;INT 10h(02)possition
    ;-------------------------
    mov ah,02h
    
    mov bh,00
    mov dh,15    ;row
    mov dl,10   ;column
    
    INT 10h  
    ;-----------------------
    
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    mov dx,offset Drinks3
    INT 21h 
                   
                   
                   
                   
   ;-----FourPart-------------
    
    ;INT 10h(02)possition
    ;-------------------------
    mov ah,02h
    
    mov bh,00
    mov dh,15    ;row
    mov dl,45   ;column
    
    INT 10h  
    ;-----------------------
    
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    mov dx,offset Drinks4
    INT 21h 
    
    jmp Exit
    
    
    
Exit:
    ret