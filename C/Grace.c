#include<stdio.h>
#include<fcntl.h>
/*
	First comment
*/
#define RIGHT O_RDWR|O_CREAT
#define OPEN open("Grace_kid.c",RIGHT)
#define MAIN(x)int main(){char *a="#include<stdio.h>%c#include<fcntl.h>%c/*%c%cFirst comment%c*/%c#define RIGHT O_RDWR|O_CREAT%c#define OPEN open(%cGrace_kid.c%c,RIGHT)%c#define MAIN(x)int main(){char *a=%c%s%c;dprintf(OPEN,a,10,10,10,9,10,10,10,34,34,10,34,a,34,10,10);}%cMAIN()%c";dprintf(OPEN,a,10,10,10,9,10,10,10,34,34,10,34,a,34,10,10);}
MAIN()
