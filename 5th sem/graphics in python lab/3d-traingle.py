# 3d triangle
 
import pygame
from pygame.locals import *
from OpenGL.GL import *
from OpenGL.GLU import *
import math
 
def draw_triangle():
    glBegin(GL_TRIANGLES)
    glColor3f(1.0, 0.0, 0.0)  # Red vertex
    glVertex3f(-0.5, -0.5, 0.0)  # 3D coordinates (x, y, z)
    glColor3f(0.0, 1.0, 0.0)  # Green vertex
    glVertex3f(0.5, -0.5, 0.0)
    glColor3f(0.0, 0.0, 1.0)  # Blue vertex
    glVertex3f(0.0, 0.5, 0.0)
    glEnd()
 
def main():
    pygame.init()
    display = (800, 600)
    pygame.display.set_mode(display, DOUBLEBUF | OPENGL)
 
    # Set up 3D perspective
    gluPerspective(45, (display[0]/display[1]), 0.1, 50.0)  # Field of view, aspect ratio, near/far clip
    glTranslatef(0.0, 0.0, -5)  # Move camera back
 
    clock = pygame.time.Clock()
    running = True
    while running:
        for event in pygame.event.get():
            if event.type == pygame.QUIT or (event.type == pygame.KEYDOWN and event.key == pygame.K_q):
                running = False
 
        # Clear screen and depth buffer
        glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT)
 
        # Rotate the triangle
        glRotatef(1, 3, 1, 1)  # Rotate 1 degree around axis (3,1,1)
 
        draw_triangle()
        pygame.display.flip()
        clock.tick(60)  # 60 FPS
 
    pygame.quit()
 
if __name__ == "__main__":
    main()