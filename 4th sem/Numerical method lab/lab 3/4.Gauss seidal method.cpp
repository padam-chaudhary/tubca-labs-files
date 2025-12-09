#include<stdio.h>
#include<conio.h>
#include<math.h>
#define f1(x1,x2,x3)  (11+2*x2-x3)/6
#define f2(x1,x2,x3)  (2*x1-2*x2+5)/7
#define f3(x1,x2,x3)  (1+2*x2+x1)/5

int main()
{
    float x1=0, x2=0, x3=0, x1_prev, x2_prev, x3_prev, e1, e2, e3, e;
    int count=1;

    printf("Enter tolerable error:\n");
    scanf("%f", &e);

    printf("\nCount\tx1\tx2\tx3\n");
    do
    {
        /* Store previous values */
        x1_prev = x1;
        x2_prev = x2;
        x3_prev = x3;

        /* Calculation */
        x1 = f1(x1_prev, x2_prev, x3_prev);
        x2 = f2(x1, x2_prev, x3_prev);
        x3 = f3(x1, x2, x3_prev);
        printf("%d\t%0.4f\t%0.4f\t%0.4f\n", count, x1, x2, x3);

        /* Error */
        e1 = fabs(x1 - x1_prev);
        e2 = fabs(x2 - x2_prev);
        e3 = fabs(x3 - x3_prev);

        count++;
    } while (e1 > e && e2 > e && e3 > e);

    printf("\nSolution: x1=%0.3f, x2=%0.3f and x3 = %0.3f\n", x1, x2, x3);

    getch();
    return 0;
}
