#include<stdio.h>
#include<fcntl.h>
#define OPEN(s) open(s,O_RDWR|O_CREAT)
int main(){
	int n=5;
	if (n <= 0)return(0);
	char buf[64]={0};
	sprintf(buf, "Sully_%d.c", n);
	OPEN(buf);
}
