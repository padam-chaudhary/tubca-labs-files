package LAB.Unit6;

public class StringBuffervsStringBuilder {

        public static void main(String[] args) {
            // StringBuffer demonstration
            StringBuffer stringBuffer = new StringBuffer("Hello");
            stringBuffer.append(" World");
            stringBuffer.insert(5, ",");
            stringBuffer.replace(6, 11, "Java");
            stringBuffer.delete(5, 6);
            System.out.println("StringBuffer: " + stringBuffer);

            // StringBuilder demonstration
            StringBuilder stringBuilder = new StringBuilder("Hello");
            stringBuilder.append(" World");
            stringBuilder.insert(5, ",");
            stringBuilder.replace(6, 11, "Java");
            stringBuilder.delete(5, 6);
            System.out.println("StringBuilder: " + stringBuilder);

            // Performance comparison
            int iterations = 100000;
            long startTime, endTime;

            // StringBuffer performance test
            startTime = System.currentTimeMillis();
            StringBuffer sbf = new StringBuffer("Performance");
            for (int i = 0; i < iterations; i++) {
                sbf.append(" Test");
            }
            endTime = System.currentTimeMillis();
            System.out.println("StringBuffer time: " + (endTime - startTime) + "ms");

            // StringBuilder performance test
            startTime = System.currentTimeMillis();
            StringBuilder sbd = new StringBuilder("Performance");
            for (int i = 0; i < iterations; i++) {
                sbd.append(" Test");
            }
            endTime = System.currentTimeMillis();
            System.out.println("StringBuilder time: " + (endTime - startTime) + "ms");
        }
    }


