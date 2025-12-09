# 3 rgb pixels in a row using OpenGL and Pygame

import pygame
from pygame.locals import *
from OpenGL.GL import *
from OpenGL.GLU import *

def draw_thick_pixel(x, y, size=5):
    """Draw a 'pixel' as a small square for visibility"""
    half = size / 2
    glBegin(GL_QUADS)
    glVertex2f(x - half, y - half)  # Bottom-left
    glVertex2f(x + half, y - half)  # Bottom-right
    glVertex2f(x + half, y + half)  # Top-right
    glVertex2f(x - half, y + half)  # Top-left
    glEnd()

def main():
    pygame.init()
    display = (800, 600)
    pygame.display.set_mode(display, DOUBLEBUF | OPENGL)
    gluOrtho2D(0, 800, 0, 600)  # 2D coordinates (0 to 800 width, 0 to 600 height)

    while True:
        for event in pygame.event.get():
            if event.type == pygame.QUIT:
                pygame.quit()
                return
            elif event.type == pygame.KEYDOWN:
                if event.key == pygame.K_q:  # Press 'Q' to quit
                    pygame.quit()
                    return

        glClear(GL_COLOR_BUFFER_BIT)
        
        # Red pixel (left)
        glColor3f(1.0, 0.0, 0.0)  # Red
        draw_thick_pixel(200, 300, 10)  # (x, y, size)
        
        # Green pixel (center)
        glColor3f(0.0, 1.0, 0.0)  # Green
        draw_thick_pixel(400, 300, 10)
        
        # Blue pixel (right)
        glColor3f(0.0, 0.0, 1.0)  # Blue
        draw_thick_pixel(600, 300, 10)
        
        pygame.display.flip()

if __name__ == "__main__":
    main()