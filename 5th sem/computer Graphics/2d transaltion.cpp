// 2D translation

#include <graphics.h>
#include <conio.h>
#include <stdio.h>

int main() {
    int gd = DETECT, gm;
    int x1, y1, x2, y2;
    int tx, ty;

    // Initialize graphics
    initgraph(&gd, &gm, "");

    // Input original rectangle coordinates
    printf("Enter top-left corner of rectangle (x1, y1): ");
    scanf("%d %d", &x1, &y1);
    printf("Enter bottom-right corner of rectangle (x2, y2): ");
    scanf("%d %d", &x2, &y2);

    // Input translation factors
    printf("Enter translation factors (tx, ty): ");
    scanf("%d %d", &tx, &ty);

    // Draw original rectangle in WHITE
    rectangle(x1, y1, x2, y2);
    outtextxy(x1, y1 - 10, "Original Rectangle");

    // Calculate new coordinates after translation
    int new_x1 = x1 + tx;
    int new_y1 = y1 + ty;
    int new_x2 = x2 + tx;
    int new_y2 = y2 + ty;

    // Draw translated rectangle in GREEN
    setcolor(GREEN);
    rectangle(new_x1, new_y1, new_x2, new_y2);
    outtextxy(new_x1, new_y1 - 10, "Translated Rectangle");

    getch();
    closegraph();
    return 0;
}
