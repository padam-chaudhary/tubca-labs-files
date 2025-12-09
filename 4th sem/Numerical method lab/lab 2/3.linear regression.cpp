#include<stdio.h>
int main()
{
    double x[200],y[200],sumx=0,sumy=0,sumxy=0,sumx2=0,a,b;
    int i,n;
    
    printf("\n how many data points you want to enter?");
    scanf("%d",&n);
    if(n<=0){
    	printf("Error:Number of data points  must be greater than zero.\n");
    	return 1;
	}
    
    for(i=0;i<n;i++)
    {
        printf("x[%d]=",i);
        scanf("%lf",&x[i]);
        printf("y[%d]=",i);
        scanf("%lf",&y[i]);
    }
    
    for(i=0;i<n;i++)
    {
        sumx+=x[i];
        sumx2+=x[i]*x[i];
        sumy+=y[i];
        sumxy+=x[i]*y[i];
    }
    double denominator= n * sumx2 - sumx * sumx;
    if(denominator==0){
    	printf("Error:Division by zero. Check if all values are the same.\n");
    	return 1;
	}
    b=(n*sumxy-sumx*sumy)/denominator;
    a=(sumy-b*sumx)/n;
    
    printf("\n values are:a=%.4lf and b=%.4lf",a,b);
    printf("\n best fit of linear regression eqn:y=%.4lf+%.4lfx\n",a,b);
    
    }
    
  

