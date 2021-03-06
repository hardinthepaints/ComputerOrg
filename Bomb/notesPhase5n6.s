Dump of assembler code for function phase_5:
=> 0x08048d87 <+0>:	sub    $0x2c,%esp     //allocate space for 11 slots
   0x08048d8a <+3>:	lea    0x1c(%esp),%eax  //$eax = &frame[7]
   0x08048d8e <+7>:	mov    %eax,0xc(%esp)  //frame[3] = &frame[7]
   0x08048d92 <+11>:	lea    0x18(%esp),%eax  //$eax = &frame[6]
   0x08048d96 <+15>:	mov    %eax,0x8(%esp)  //frame[2] = &frame[6]
   0x08048d9a <+19>:	movl   $0x804a32f,0x4(%esp) //frame[1] = ...
   0x08048da2 <+27>:	mov    0x30(%esp),%eax //$eax = param for p_5
   0x08048da6 <+31>:	mov    %eax,(%esp) //frame[0] = param for p_5
   0x08048da9 <+34>:	call   0x8048860 <__isoc99_sscanf@plt> //call sscanf
   0x08048dae <+39>:	cmp    $0x1,%eax //compare 1 with $eax
   0x08048db1 <+42>:	jg     0x8048db8 <phase_5+49> //jump if greater WANT THIS
   0x08048db3 <+44>:	call   0x8049145 <explode_bomb> //explode
   0x08048db8 <+49>:	mov    0x18(%esp),%eax //$eax = frame[6]
   0x08048dbc <+53>:	and    $0xf,%eax //$eax = frame[6] & 0xf (aka first 4 bits preserved only)
   	      //0xf in binary is 1111
	      //in dec. 15
   0x08048dbf <+56>:	mov    %eax,0x18(%esp) //frame[6] = $eax
   0x08048dc3 <+60>:	cmp    $0xf,%eax //compare 0xf and %eax
   0x08048dc6 <+63>:	je     0x8048df2 <phase_5+107> //jump if equal -do not want 
   	      //original frame[6] cannot have all 1's in first 4 bits
   0x08048dc8 <+65>:	mov    $0x0,%ecx //$ecx = 0
   0x08048dcd <+70>:	mov    $0x0,%edx //$edx = 0
   0x08048dd2 <+75>:	add    $0x1,%edx //%edx += 1
   0x08048dd5 <+78>:	mov    0x804a1e0(,%eax,4),%eax //$eax = ... + 4*$eax 
   	     //15 words starting at the address:
   	     //0x0000000a	0x00000002	0x0000000e	0x00000007
	     //0x00000008	0x0000000c	0x0000000f	0x0000000b
	     //0x00000000	0x00000004	0x00000001	0x0000000d
	     //0x00000003	0x00000009	0x00000006

   0x08048ddc <+85>:	add    %eax,%ecx //$ecx += $eax
   0x08048dde <+87>:	cmp    $0xf,%eax //compare 0xf to $eax
   0x08048de1 <+90>:	jne    0x8048dd2 <phase_5+75> //jump if not equal do not want
   	      //need $eax == 0xf
   0x08048de3 <+92>:	mov    %eax,0x18(%esp) //frame[6] = $eax
   0x08048de7 <+96>:	cmp    $0xf,%edx //compare 0xf to $edx so edx should = 15
   0x08048dea <+99>:	jne    0x8048df2 <phase_5+107> //jump if not eaqual do not want
   0x08048dec <+101>:	cmp    0x1c(%esp),%ecx //compare $ecx to frame[7]
   0x08048df0 <+105>:	je     0x8048df7 <phase_5+112> //jump if equal WANT EQUAL
   0x08048df2 <+107>:	call   0x8049145 <explode_bomb> //BOOM
   0x08048df7 <+112>:	add    $0x2c,%esp //unallocate space
   0x08048dfa <+115>:	ret  


Dump of assembler code for function phase_6:
=> 0x08048dfb <+0>:	push   %esi //push to stack
   0x08048dfc <+1>:	push   %ebx //push to stack
   0x08048dfd <+2>:	sub    $0x44,%esp //allocate 17 slots
   0x08048e00 <+5>:	lea    0x10(%esp),%eax //$eax = &frame[4]
   0x08048e04 <+9>:	mov    %eax,0x4(%esp) //frame[1] = &frame[4]
   0x08048e08 <+13>:	mov    0x50(%esp),%eax //$eax = parameter
   0x08048e0c <+17>:	mov    %eax,(%esp) //frame[0] = parameter
   0x08048e0f <+20>:	call   0x804916c <read_six_numbers> //
   0x08048e14 <+25>:	mov    $0x0,%esi //$esi = 0
   0x08048e19 <+30>:	mov    0x10(%esp,%esi,4),%eax //$eax = frame[4] + $esp
   0x08048e1d <+34>:	sub    $0x1,%eax //$eax - 1
   0x08048e20 <+37>:	cmp    $0x5,%eax //$compare $eax to 5
   0x08048e23 <+40>:	jbe    0x8048e2a <phase_6+47> //jump if below or equal
   0x08048e25 <+42>:	call   0x8049145 <explode_bomb> 
   0x08048e2a <+47>:	add    $0x1,%esi //$esi += 1
   0x08048e2d <+50>:	cmp    $0x6,%esi //compare $esi and 6
   0x08048e30 <+53>:	jne    0x8048e39 <phase_6+62> //jump if not equal
   0x08048e32 <+55>:	mov    $0x0,%ebx //$ebx = 0
   0x08048e37 <+60>:	jmp    0x8048e73 <phase_6+120> //
   0x08048e39 <+62>:	mov    %esi,%ebx //$ebx = $esi
   0x08048e3b <+64>:	mov    0x10(%esp,%ebx,4),%eax //$eax = what is at 4 * $ebx + $esp + 0x10
   0x08048e3f <+68>:	cmp    %eax,0xc(%esp,%esi,4) //compare $eax to what is at 4 * $esi + $esp + 0xc
   0x08048e43 <+72>:	jne    0x8048e4a <phase_6+79> //jump if not equal WANT THIS
   0x08048e45 <+74>:	call   0x8049145 <explode_bomb> //explode
   0x08048e4a <+79>:	add    $0x1,%ebx //$ebx += 1
   0x08048e4d <+82>:	cmp    $0x5,%ebx //compare $ebx to 5
   0x08048e50 <+85>:	jle    0x8048e3b <phase_6+64> //jump if less or equal do not want-so want $ebx > 5
   0x08048e52 <+87>:	jmp    0x8048e19 <phase_6+30> //
   0x08048e54 <+89>:	mov    0x8(%edx),%edx //$edx = $edx + 0x8
   0x08048e57 <+92>:	add    $0x1,%eax //$eax += 1
   0x08048e5a <+95>:	cmp    %ecx,%eax //compare $ecx to $eax
   0x08048e5c <+97>:	jne    0x8048e54 <phase_6+89> //jump if not equal do not want
   0x08048e5e <+99>:	xchg   %ax,%ax // no operation- for a time delay?
   0x08048e60 <+101>:	jmp    0x8048e67 <phase_6+108> //jump to 108 
   0x08048e62 <+103>:	mov    $0x804c13c,%edx
   0x08048e67 <+108>:	mov    %edx,0x28(%esp,%esi,4) //copy $edx to $esi*4 + $esp + 0x28 
   0x08048e6b <+112>:	add    $0x1,%ebx //$ebx += 1
   0x08048e6e <+115>:	cmp    $0x6,%ebx //compare $ebx to 6
   0x08048e71 <+118>:	je     0x8048e8a <phase_6+143> //jump if equal probably want
   0x08048e73 <+120>:	mov    %ebx,%esi //$esi = $ebx
   0x08048e75 <+122>:	mov    0x10(%esp,%ebx,4),%ecx //$ecx = what is at 4 * $ebx + $esp + 10
   0x08048e79 <+126>:	cmp    $0x1,%ecx //compare $ecx to 1
   0x08048e7c <+129>:	jle    0x8048e62 <phase_6+103> //jump if less or equal don't want
   0x08048e7e <+131>:	mov    $0x1,%eax //$eax = 1
   0x08048e83 <+136>:	mov    $0x804c13c,%edx //$edx = ...
   0x08048e88 <+141>:	jmp    0x8048e54 <phase_6+89> //jump to line 89 
   0x08048e8a <+143>:	mov    0x28(%esp),%ebx //$ebx = frame[10]
   0x08048e8e <+147>:	lea    0x2c(%esp),%eax //$eax = frame[11]
   0x08048e92 <+151>:	lea    0x40(%esp),%esi //$esi = &frame[16]
   0x08048e96 <+155>:	mov    %ebx,%ecx //$ecx = $ebx
   0x08048e98 <+157>:	mov    (%eax),%edx //$edx = frame[11]
   0x08048e9a <+159>:	mov    %edx,0x8(%ecx) //
   0x08048e9d <+162>:	add    $0x4,%eax 
   0x08048ea0 <+165>:	cmp    %esi,%eax
   0x08048ea2 <+167>:	je     0x8048ea8 <phase_6+173>
   0x08048ea4 <+169>:	mov    %edx,%ecx
   0x08048ea6 <+171>:	jmp    0x8048e98 <phase_6+157>
   0x08048ea8 <+173>:	movl   $0x0,0x8(%edx)
   0x08048eaf <+180>:	mov    $0x5,%esi
   0x08048eb4 <+185>:	mov    0x8(%ebx),%eax
   0x08048eb7 <+188>:	mov    (%eax),%eax
   0x08048eb9 <+190>:	cmp    %eax,(%ebx)
   0x08048ebb <+192>:	jge    0x8048ec2 <phase_6+199>
   0x08048ebd <+194>:	call   0x8049145 <explode_bomb>
   0x08048ec2 <+199>:	mov    0x8(%ebx),%ebx
   0x08048ec5 <+202>:	sub    $0x1,%esi
   0x08048ec8 <+205>:	jne    0x8048eb4 <phase_6+185>
   0x08048eca <+207>:	add    $0x44,%esp
   0x08048ecd <+210>:	pop    %ebx
   0x08048ece <+211>:	pop    %esi
   0x08048ecf <+212>:	ret    
