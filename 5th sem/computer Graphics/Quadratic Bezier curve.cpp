//Bezier curve 
#include <graphics.h>
#include <math.h>
#include <dos.h>

// Control points (quadratic)
int ctrlPoints[3][2] = {
    {100, 400},   // P0
    {300, 100},   // P1 (control)
    {500, 400}    // P2
};

// Function to calculate a point on a quadratic Bezier curve
void computeBezierPoint(float t, int* x, int* y) {
    float u = 1 - t;
    *x = (int)(u*u*ctrlPoints[0][0] +
               2*u*t*ctrlPoints[1][0] +
               t*t*ctrlPoints[2][0]);
    
    *y = (int)(u*u*ctrlPoints[0][1] +
               2*u*t*ctrlPoints[1][1] +
               t*t*ctrlPoints[2][1]);
}

void drawBezierCurve() {
    for (float t = 0.0; t <= 1.0; t += 0.001) {
        int x, y;
        computeBezierPoint(t, &x, &y);
        putpixel(x, y, GREEN);
    }
}

void animateBezier() {
    for (float t = 0.0; t <= 1.0; t += 0.002) {
        int x, y;
        computeBezierPoint(t, &x, &y);

        // Draw animated point
        putpixel(x, y, RED);

        delay(5);

        // Erase previous point (by redrawing the background pixel color)
        putpixel(x, y, GREEN);
    }
}

int main() {
    int gd = DETECT, gm;
    initgraph(&gd, &gm, "");

    // Draw control points
    setcolor(WHITE);
    for (int i = 0; i < 3; i++) {
        circle(ctrlPoints[i][0], ctrlPoints[i][1], 3);
        floodfill(ctrlPoints[i][0], ctrlPoints[i][1], WHITE);
    }

    // Draw curve once
    drawBezierCurve();

    // Animate moving point along the curve
    animateBezier();

    getch();
    closegraph();
    return 0;
}
