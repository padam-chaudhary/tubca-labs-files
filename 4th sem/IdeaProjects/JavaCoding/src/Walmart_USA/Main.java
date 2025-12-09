package Walmart_USA;
import java.util.Arrays;

class PowerOfTwoMaxHeap {
    private int[] heap;
    private int size;
    private int numChildren; // Number of children for each parent (2^x)

    public PowerOfTwoMaxHeap(int x) {
        this.numChildren = x;
        this.heap = new int[1]; // Initialize with a dummy element at index 0
        this.size = 0;
    }

    public void insert(int value) {
        // Expand the heap if needed
        if (size + 1 >= heap.length) {
            heap = Arrays.copyOf(heap, heap.length * 2);
        }

        // Add the new element to the end
        heap[++size] = value;

        // Reheapify: Compare with parent and swap if necessary
        int currentIndex = size;
        while (currentIndex > 1) {
            int parentIndex = currentIndex / numChildren;
            if (heap[currentIndex] > heap[parentIndex]) {
                swap(currentIndex, parentIndex);
                currentIndex = parentIndex;
            } else {
                break;
            }
        }
    }

    public int popMax() {
        if (size == 0) {
            throw new IllegalStateException("Heap is empty.");
        }

        int max = heap[1]; // Root element (maximum value)
        heap[1] = heap[size--]; // Replace root with last element
        reheapify(1); // Reheapify from the root

        return max;
    }

    private void reheapify(int index) {
        int maxIndex = index;
        for (int i = 1; i <= numChildren; i++) {
            int childIndex = numChildren * index + i;
            if (childIndex <= size && heap[childIndex] > heap[maxIndex]) {
                maxIndex = childIndex;
            }
        }

        if (maxIndex != index) {
            swap(index, maxIndex);
            reheapify(maxIndex);
        }
    }

    private void swap(int i, int j) {
        int temp = heap[i];
        heap[i] = heap[j];
        heap[j] = temp;
    }
}
public class Main{
    public static void main(String[] args) {
        PowerOfTwoMaxHeap heap = new PowerOfTwoMaxHeap(3); // Example: 2^3 = 8 children
        heap.insert(10);
        heap.insert(40);
        heap.insert(15);
        heap.insert(5);

        System.out.println("Max element: " + heap.popMax()); // Should print 30
    }
}


