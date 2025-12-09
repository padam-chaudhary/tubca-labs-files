# rgb circles with additive blending
 
import pygame
from pygame.locals import *
from OpenGL.GL import *
from OpenGL.GLU import *
import math
 
def draw_circle(x, y, radius=100, segments=100):
    glBegin(GL_TRIANGLE_FAN)
    for i in range(segments + 1):
        angle = 2 * math.pi * i / segments
        glVertex2f(x + math.cos(angle) * radius, y + math.sin(angle) * radius)
    glEnd()
 
def main():
    pygame.init()
    display = (800, 600)
    pygame.display.set_mode(display, DOUBLEBUF | OPENGL)
    gluOrtho2D(0, 800, 0, 600)
 
    glEnable(GL_BLEND)
    glBlendFunc(GL_ONE, GL_ONE)  # Use additive blending
 
    while True:
        for event in pygame.event.get():
            if event.type == pygame.QUIT:
                pygame.quit()
                return
            elif event.type == pygame.KEYDOWN:
                if event.key == pygame.K_q:
                    pygame.quit()
                    return
 
        glClearColor(0, 0, 0, 1)  # Black background for RGB
        glClear(GL_COLOR_BUFFER_BIT)
 
        # Red Circle (Top)
        glColor4f(1.0, 0.0, 0.0, 0.6)
        draw_circle(400, 400, 150)
 
        # Green Circle (Bottom Left)
        glColor4f(0.0, 1.0, 0.0, 0.6)
        draw_circle(300, 250, 150)
 
        # Blue Circle (Bottom Right)
        glColor4f(0.0, 0.0, 1.0, 0.6)
        draw_circle(500, 250, 150)
 
        pygame.display.flip()
 
 
if __name__ == "__main__":
    main()
 
