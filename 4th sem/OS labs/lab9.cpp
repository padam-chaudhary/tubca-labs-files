#include <stdio.h>
#include <stdbool.h>

#define MAX_PAGES 30
#define MAX_FRAMES 10

// Function to find the optimal page to replace
int findOptimalPage(int temp[], int frames, int pages[], int currentPageIndex, int n) {
    int optimalIndex = -1;
    int farthest = currentPageIndex;

    // Check each frame for the optimal replacement
    for (int i = 0; i < frames; i++) {
        int j;
        for (j = currentPageIndex; j < n; j++) {
            // If the page in the frame matches a future page reference
            if (temp[i] == pages[j]) {
                // If this page is used farthest in the future, mark it for replacement
                if (j > farthest) {
                    farthest = j;
                    optimalIndex = i; // Replace this frame
                }
                break;
            }
        }

        // If the page is not found in the future reference
        if (j == n) {
            return i; // We can replace this frame
        }
    }

    return (optimalIndex != -1) ? optimalIndex : 0; // Default to the first frame
}

int main() {
    int i, n, frames, pages[MAX_PAGES], temp[MAX_FRAMES], page_faults = 0;

    printf("Enter number of pages: ");
    scanf("%d", &n);

    printf("Enter reference string: ");
    for (i = 0; i < n; i++) {
        scanf("%d", &pages[i]);
    }

    printf("Enter number of frames: ");
    scanf("%d", &frames);

    // Initialize the frames
    for (i = 0; i < frames; i++) {
        temp[i] = -1; // Using -1 to indicate an empty frame
    }

    printf("\nReference String\tFrames\n");

    // Process each page in the reference string
    for (i = 0; i < n; i++) {
        bool pageFound = false;

        // Check if the page is already in memory
        for (int k = 0; k < frames; k++) {
            if (temp[k] == pages[i]) {
                pageFound = true; // Page is already loaded
                break;
            }
        }

        // If the page is not in memory, replace the optimal page
        if (!pageFound) {
            int replaceIndex = findOptimalPage(temp, frames, pages, i, n);
            temp[replaceIndex] = pages[i]; // Replace the page
            page_faults++; // Increment the page fault count
        }

        // Print the current state of frames
        printf("%d\t\t\t", pages[i]);
        for (int k = 0; k < frames; k++) {
            if (temp[k] != -1) {
                printf("%d ", temp[k]);
            } else {
                printf("- "); // Print empty frame as -
            }
        }
        printf("\n");
    }

    printf("\nTotal Page Faults: %d\n", page_faults);
    return 0;
}
