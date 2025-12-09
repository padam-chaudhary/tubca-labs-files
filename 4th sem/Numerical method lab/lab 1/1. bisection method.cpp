#include <stdio.h>
#include <math.h>

#define f(x) ((x)*(x) + 4*(x) - 9)
#define df(x) (2*(x) + 4)

int main() {
    float x0, x1, f0, df0, e;
    int i = 1;
    x0 = 0.0;
    e = 0.1;

    printf("Iteration\tX0\tf(X0)\tX1\tError\n");
    do {
        f0 = f(x0);
        df0 = df(x0);
        if (df0 == 0.0) {
            printf("Mathematical error: Division by zero!\n");
            return -1;
        }
        x1 = x0 - (f0 / df0);
        printf("%d\t\t%.4f\t%.4f\t%.4f\t%.4f\n", i, x0, f0, x1, fabs(x1 - x0));
        x0 = x1;
        i++;
    } while (fabs(f0) > e);

    printf("Root = %.4f\n", x1);
    return 0;
}
