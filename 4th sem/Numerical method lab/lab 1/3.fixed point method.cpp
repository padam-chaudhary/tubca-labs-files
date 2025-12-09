#include <stdio.h>
#include <math.h>

#define g(x) (sqrt(2-x))

int main() {
    float x0, x1, e;
    int  i = 1,max_iter;

    printf("Enter the initial guess: ");
    scanf("%f", &x0);

    printf("Enter the tolerable error: ");
    scanf("%f", &e);

    printf("Enter the maximum number of iterations: ");
    scanf("%d", &max_iter);

    printf("Iteration\tX0\t\tX1\t\tError\n");

    do {
        x1 = g(x0);
        printf("%d\t\t%.4f\t\t%.4f\t\t%.4f\n", i, x0, x1, fabs(x1 - x0));
        if (fabs(x1 - x0) < e) {
            printf("\nRoot = %f\n", x1);
            return 0;
        }
        x0 = x1;
        i++;
    } while (i <= max_iter);

    printf("The method did not converge within the maximum number of iterations.\n");
    return 1;
}

