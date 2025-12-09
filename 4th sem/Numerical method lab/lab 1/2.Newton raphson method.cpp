//wap to find root of equation using newton method
#include<stdio.h>
#include<conio.h>
#include<stdlib.h>
#include<math.h>
#define f(x) x*x-6*x-10
#define g(x) 2*x-6
int main(){
	printf("newton raphson method::");
	float x0,x1,x2,f0,f1,f2,e,g1;
	int i=1;
	
	printf("\n  enter initial guess:");
	scanf("%f%f",&x1,&x2);
	printf("enter torable error:");
	scanf("%f",&e);
	printf("\nIteretion\t\tx0\t\t\tf0\t\tx1\t\tf1\n");
	do{
	f0=f(x0);
	g1=g(x1);
		if(g1==0){
	printf("\n denomuinator canoot be zero:");
	exit(0);
		}
	x1= x0- (f0/g1);
		printf("\n%d\t\t\t%f\t\t%f\t\t%d\t\t%d",i,x0,f0,x1,f1);
	x0=x1;
	f1=f(x1);
		i=i+1;
	}while(fabs(f1)>e);
	printf("\n\n Root=%f",x1);
}
