#include<unistd.h>
#include<stdio.h>
#include<fcntl.h>
#include<stdlib.h>
#define OPEN(s) open(s,O_RDWR|O_CREAT, 777)
void ccrun(char *buf){
char cc[255]={0};sprintf(cc, "gcc -Wall -Wextra -Werror %s -o Sully;./Sully", buf);
system(cc);}
int main(){
int n=5;
if(n<=0)return(0);char buf[64]={0};sprintf(buf, "Sully_%d.c", n);if(access(buf,F_OK)!=-1)n--;sprintf(buf, "Sully_%d.c", n);
char *a="#include<unistd.h>%c#include<stdio.h>%c#include<fcntl.h>%c#include<stdlib.h>%c#define OPEN(s) open(s,O_RDWR|O_CREAT, 777)%cvoid ccrun(char *buf){%cchar cc[255]={0};sprintf(cc, %cgcc -Wall -Wextra -Werror %c%c -o Sully;./Sully%c, buf);%csystem(cc);}%cint main(){%cint n=%d;%cif(n<=0)return(0);char buf[64]={0};sprintf(buf, %cSully_%c%c.c%c, n);if(access(buf,F_OK)!=-1)n--;sprintf(buf, %cSully_%c%c.c%c, n);%cchar *a=%c%s%c;%cint fd = OPEN(buf); if(fd < 0) return (0);dprintf(fd,a,10,10,10,10,10,10,34,37,115,34,10,10,10,n,10,34,37,100,34,34,37,100,34,10,34,a,34,10,10,10);%cccrun(buf);}%c";
int fd = OPEN(buf); if(fd < 0) return (0);dprintf(fd,a,10,10,10,10,10,10,34,37,115,34,10,10,10,n,10,34,37,100,34,34,37,100,34,10,34,a,34,10,10,10);
ccrun(buf);}
