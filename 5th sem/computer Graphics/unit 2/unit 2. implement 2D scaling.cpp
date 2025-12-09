// 2. Scaling:
#include <stdio.h>
#include <graphics.h>

void drawTriangle(int x1, int y1, int x2, int y2, int x3, int y3) {
    line(x1, y1, x2, y2);
    line(x2, y2, x3, y3);
    line(x3, y3, x1, y1);
}

int main() {
    int gd = DETECT, gm;
    initgraph(&gd, &gm, (char *)"");

    // Original triangle vertices
    int x1 = 50, y1 = 100;
    int x2 = 120, y2 = 120;
    int x3 = 100, y3 = 50;

    float sx, sy;
    printf("Enter the scaling factors (sx sy): ");
    scanf("%f %f", &sx, &sy);

    printf("Triangle before scaling\n");
    drawTriangle(x1, y1, x2, y2, x3, y3);

    // Use x1, y1 as the fixed point for scaling
    int new_x2 = x1 + (x2 - x1) * sx;
    int new_y2 = y1 + (y2 - y1) * sy;
    int new_x3 = x1 + (x3 - x1) * sx;
    int new_y3 = y1 + (y3 - y1) * sy;

    printf("Triangle after scaling\n");
    drawTriangle(x1, y1, new_x2, new_y2, new_x3, new_y3);

    getch();
    closegraph();
    return 0;
}
