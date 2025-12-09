//wap to find root of equation using False method
#include<stdio.h>
#include<conio.h>
#include<stdlib.h>
#include<math.h>
#define f(x) x*x-6*x-10
int main(){
	float x0,x1,x2,f0,f1,f2,e;
	int i=1;
	printf("enter torable error:");
	scanf("%f",&e);
	printf("\n 2ta enter initial guess:");
	scanf("%f%f",&x1,&x2);
	printf("\nIteretion\t\tx0\t\t\tf0");
	do{
		f1=f(x1);
		f2=f(x2);
		if(f1==f2){
	printf("\n we canot divide by zero! select another value:");
	exit(0);
		}
		x0=x1-((x2-x1)*f1)/(f2-f1);
		f0=f(x0);
		printf("\n%d\t\t\t%f\t\t%f",i,x0,f0);
		x1=x2;
		f1=f2;
		x2=x0;
		f2=f0;
		i++;
	}while(fabs(f0)>e);
	printf("\n\n Root=%f",x0);
}
