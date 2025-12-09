
#include <stdio.h>
#include <stdlib.h> // Include this for the abs() function

void calculateSeekTime(int requests[], int size, int initial) {
    int totalSeekTime = 0;
    int currentPosition = initial;

    printf("Disk Scheduling Order:\n");
    printf("%d ", currentPosition);  // Start position
   

    for (int i = 0; i < size; i++) {
        int seekTime = abs(requests[i] - currentPosition);
        totalSeekTime += seekTime;
        currentPosition = requests[i];
        printf("-> %d ", currentPosition);  // Move to the next request
    }
    printf("\n");
    printf("\nTotal Seek Time: %d\n", totalSeekTime);
}

int main() {
    int requests[100], size, initial;

    printf("Enter the initial head position: ");
    scanf("%d", &initial);
    printf("\n");
    printf("Enter the number of disk requests: ");
    scanf("%d", &size);
    printf("\n");
    printf("Enter the disk requests:\n");
    for (int i = 0; i < size; i++) {
        scanf("%d", &requests[i]);
        printf("\n");
    }

    calculateSeekTime(requests, size, initial);

    return 0;
}
