#include <stdio.h>

int main() {
    int i, j, n, frames, pages[30], temp[10], page_faults = 0;
    
    printf("Enter number of pages: ");
    scanf("%d", &n);
    
    printf("Enter reference string: ");
    for(i = 0; i < n; i++)
        scanf("%d", &pages[i]);
    
    printf("Enter number of frames: ");
    scanf("%d", &frames);
    
    // Initialize the frames
    for(i = 0; i < frames; i++)
        temp[i] = -1;
    
    j = 0;
    printf("\nReference String\tFrames\n");
    
    // Process each page in the reference string
    for(i = 0; i < n; i++) {
        int flag = 0;
        for(int k = 0; k < frames; k++) {
            if(temp[k] == pages[i]) {
                flag = 1;
                break;
            }
        }
        
        // If the page is not in memory, replace the oldest page (FIFO)
        if(flag == 0) {
            temp[j] = pages[i];
            j = (j + 1) % frames;
            page_faults++;
        }
        
        // Print the current state of frames
        printf("%d\t\t\t", pages[i]);
        for(int k = 0; k < frames; k++) {
            if(temp[k] != -1)
                printf("%d ", temp[k]);
            else
                printf("- ");
        }
        printf("\n");
    }
    
    printf("\nTotal Page Faults: %d\n", page_faults);
    return 0;
}
