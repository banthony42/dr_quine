#include<stdio.h>
#include<fcntl.h>
#include<stdlib.h>
#define OPEN(s) open(s,O_RDWR|O_CREAT)
void ccrun(char *buf){
	char cc[255]={0};sprintf(cc, "gcc -Wall -Wextra -Werror %s -o Sully;./Sully", buf);
	system(cc);
}
int main(){
	int n=5;if (n <= 0)return(0);char buf[64]={0};sprintf(buf, "Sully_%d.c", n--);
	char *a="#include<stdio.h>
#include<fcntl.h>
#include<stdlib.h>
#define OPEN(s) open(s,O_RDWR|O_CREAT)
void ccrun(char *buf){
	char cc[255]={0};sprintf(cc, "gcc -Wall -Wextra -Werror %s -o Sully;./Sully", buf);
	system(cc);
}
int main(){
	int n=5;if (n <= 0)return(0);char buf[64]={0};sprintf(buf, "Sully_%d.c", n--);
	char *a="%d";
	dprintf(OPEN(buf), a, n);
	ccrun(buf);
}";
	dprintf(OPEN(buf), a, n);
	ccrun(buf);
}
