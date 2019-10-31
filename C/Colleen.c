#include<stdio.h>
/*
	First comment
*/
void func(){}int main(){
/*
	Second comment
*/
func();char*a="#include<stdio.h>%c/*%c%cFirst comment%c*/%cvoid func(){}int main(){%c/*%c%cSecond comment%c*/%cfunc();char*a=%c%s%c;printf(a,10,10,9,10,10,10,10,9,10,10,34,a,34,10);}%c";printf(a,10,10,9,10,10,10,10,9,10,10,34,a,34,10);}
