// Afisarea unei matrice

.data

	n: 		.space 4

	m: 	.space 4

	lineIndex:	.space 4

	columnIndex: .space 4

	lineIndex2: .space 4

	columnIndex2: .space 4

	element: .space 5

	matrix:		.space 1600

	matrix2: .space 1600

	nrMuchii: .space 4	

	index: .space 4

	left: .space 4

	right: .space 4	

	k: .space 4

	v2: .long 2

	v3: .long 3

	v1: .long 1

	v0: .long 0

	 

	mi: .space 4

	ni: .space 4 

	sus: .space 4

	t: .space 4 

	jos: .space 4

	stanga: .space 4

	indicei: .space 4

	dreapta: .space 4

	stanga_sus: .space 4

	dreapta_sus: .space 4

	stanga_jos: .space 4

	index2: .space 4

	indice: .space 4

	sum: .space 4

	dreapta_jos: .space 4

	inPointer: .space 4

	outPointer: .space 4

	readf: .asciz "r"

	writef: .asciz "w"

	inputFileC: .asciz "in.txt"

	outputFileC: .asciz "out.txt"

	formatScanf:	.asciz "%d "

	newLine:	.asciz "\n"

	formatPrintf: .asciz "%d "

	

	

	

.text



.global main



main:

//citire variabile



 pushl $readf

 pushl $inputFileC

 call fopen

 popl %ebx

 popl %ebx

  

  movl %eax, inPointer

  

  pushl $writef

  pushl $outputFileC

  call fopen

  popl %ebx

  popl %ebx

  

  movl %eax, outPointer

  

  push $n

  push $formatScanf

  push inPointer

  call fscanf

  pop %ebx

  pop %ebx

  pop %ebx

  

  

  push $m

  push $formatScanf

  push inPointer

  call fscanf

  pop %ebx

  pop %ebx

  pop %ebx

  

   

  

  push $nrMuchii

  push $formatScanf

  push inPointer

  call fscanf

  pop %ebx

  pop %ebx

  pop %ebx

 //incrementam m si n si le salvam pe cele initiale pt a ne largi matricea 

  

  incl m

  incl n

  mov m, %eax

  mov %eax, mi

  mov n, %eax

  mov %eax, ni

 

  incl m

  incl n

  

  movl $0, index

  

  

et_for:

  

  



  //construim matricea

  movl index, %ecx

  cmp %ecx, nrMuchii

  je prelucrare

  

 

  

  

  push $left

  push $formatScanf

  push inPointer

  call fscanf

  pop %ebx

  pop %ebx

  pop %ebx

  

    push $right

  push $formatScanf

  push inPointer

  call fscanf

  pop %ebx

  pop %ebx

  pop %ebx

  

  

  

  

  incl left

  incl right

  

  movl left, %eax

  movl $0, %edx

  mull m

  addl right, %eax

  

  lea matrix, %edi

  movl $1, (%edi, %eax, 4)

  

  

  incl index

  jmp et_for

 



//parcurgem matricea de la 1 la ni si de la 1 la mi de k ori



 

 prelucrare: 

     

     push $k

  push $formatScanf

  push inPointer

  call fscanf

  pop %ebx

  pop %ebx

  pop %ebx

 et_fork: 

  

   movl index2, %ecx

   cmp %ecx, v0

   je game

   

   

   copiere:

   movl $1, lineIndex2

   for_lines2:

     movl lineIndex2, %ecx

     cmp %ecx, ni

     je game

     

      movl $1, columnIndex2

      

      for_columns2: 

      movl columnIndex2, %ecx

      cmp %ecx, mi

      je cont2

      

      movl lineIndex2, %eax

      movl $0, %edx

      mull m

      addl columnIndex2, %eax

      

      lea matrix2, %edi

      movl (%edi, %eax, 4), %ebx

      lea matrix , %edi

      movl %ebx, (%edi, %eax, 4)

      

      incl columnIndex2

      jmp for_columns2

      

      cont2:

      incl lineIndex2

      jmp for_lines2

  

   game:

   movl index2,%ecx

  

  

  cmp k, %ecx

  je et_afis_matrice

  

  incl index2 



   

    

   movl $1, lineIndex 

   movl $1, columnIndex

   for_linie: 

  movl lineIndex, %ecx 

    cmp %ecx, ni 

   je et_fork

  movl $1, columnIndex 

       

     for_coloana:  

     movl columnIndex, %ecx 

      cmp %ecx, mi 

      je cont1

      movl lineIndex, %eax 

      movl $0, %edx 

      mull m

     addl columnIndex, %eax 

     lea matrix, %edi 

     movl %eax, indice

    

     

     movl %edx, sum

     movl %eax, indicei

     



   incl indice

   movl indice,%eax

  movl (%edi,%eax,4), %ecx

  addl %ecx, sum

     

     sub m, %eax

     movl %eax, indice

     movl (%edi,%eax,4), %ecx

     addl %ecx, sum

     decl indice

     movl indice, %eax

    movl (%edi,%eax,4), %ecx

     addl %ecx, sum

     decl indice

     movl indice, %eax

     

     movl (%edi,%eax,4), %ecx

     addl %ecx, sum

     

    addl m, %eax

    movl %eax, indice

    

    

    movl (%edi,%eax,4), %ecx

    addl %ecx, sum

    

    addl m, %eax

    movl %eax, indice

    

    movl (%edi,%eax,4), %ecx

    addl %ecx, sum

    incl indice

    movl indice, %eax

    

    movl (%edi,%eax,4), %ecx

    addl %ecx, sum

    incl indice

    movl indice, %eax

     movl (%edi,%eax,4), %ecx

    addl %ecx, sum    

    

       

       lea matrix, %edi

 

      



      

     // movl (%edi, %ecx, 4), %ebx

     // movl %ebx, t

      

    //  pushl t

    //pushl $formatPrintf

   // call printf

   // popl %ebx

    // popl %ebx 

     

     

    // pushl $0

    // call fflush

     //popl %ebx

     

     

      movl sum, %eax

      movl indicei, %ecx 

      

      movl (%edi, %ecx, 4), %ebx

        

        cmp v0, %ebx

           je moarta

           

        vie:

        cmp v2, %eax

        jl moare

        cmp v3, %eax

        jg moare

        jmp naste

        

        moarta:

        cmp v3, %eax

        je naste

        jmp continuare_copiere

        

        moare:

       lea matrix2, %edi

        movl $0, (%edi, %ecx, 4)

        lea matrix, %edi

        jmp continuare_copiere

         

         

         naste:

         lea matrix2, %edi

         movl $1,(%edi, %ecx, 4)

         lea matrix, %edi

         jmp continuare_copiere

        

     continuare_copiere:

      

    continuare:

    incl columnIndex 

      jmp for_coloana 

      

    

     cont1:

      incl lineIndex

      jmp for_linie

      

      

 

 

  //afisarea matrice de la 1 la ni si de la 1 la mi





  et_afis_matrice:

  

  

   

   movl $1, lineIndex

   for_lines:

     movl lineIndex, %ecx

     cmp %ecx, ni

     je et_exit

     

      movl $1, columnIndex

      

      for_columns: 

      movl columnIndex, %ecx

      cmp %ecx, mi

      je cont

      

      movl lineIndex, %eax

      movl $0, %edx

      mull m

      addl columnIndex, %eax

      

      lea matrix, %edi

      movl (%edi, %eax, 4), %ebx

      movl %ebx, element

      

      pusha

  push element

  push $formatPrintf

  push outPointer

  call fprintf

  pop %ebx

  pop %ebx

  pop %ebx

  

        

      pushl $0

      call fflush

      popl %ebx

      

      popa

        

      incl columnIndex

      jmp for_columns

      

      cont:

      pusha

  push $newLine

  push outPointer

  call fprintf

  pop %ebx

  pop %ebx

  

  

      pushl $0

      call fflush

      popl %ebx

  popa

        

      incl lineIndex

      jmp for_lines

      

       push $newLine

  push outPointer

  call fprintf

  pop %ebx

  pop %ebx

  

et_exit:

	mov $1, %eax

	mov $0, %ebx

	int $0x80