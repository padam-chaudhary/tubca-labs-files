#include<stdio.h>
int main()
{
    float x[200],y[200],xp,yp=0,l;
    int i,j,n;
    printf("\n Enter the number of  data points:");
    scanf("%d",&n);
    
    for(i=1;i<=n;i++)
    {
        printf("x[%d]=",i);
        scanf("%f",&x[i]);
        
        printf("y[%d]=",i);
        scanf("%f",&y[i]);
        
    }
    
    printf("enter interpolation point(xp):");
    scanf("%f",&xp);
    
    for(i=0;i<n;i++)
    {
        l=1.0;
        for(j=1;j<n;j++)
        {
            if(i!=j)
            {
                l=l*(xp-x[j])/(x[i]-x[j]);
            }
        }
        yp=yp+l*y[i];
    }
    printf("\n interpolated value=%f",yp);
    
    
}

