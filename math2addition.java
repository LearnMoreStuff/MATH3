import java.util.Scanner;

public class MathQuiz {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int math;

        System.out.println("Hi, thank you for getting MATH3 we hope you enjoy the new and improved MATH!!!");
        try { Thread.sleep(2000); } catch (InterruptedException e) { e.printStackTrace(); }
        System.out.println("If you get the math wrong you start over!!");
        try { Thread.sleep(2000); } catch (InterruptedException e) { e.printStackTrace(); }
        try { Thread.sleep(2000); } catch (InterruptedException e) { e.printStackTrace(); }
        System.out.println("What is random"); // Replace 'random' with actual random number generation if needed
        math = scanner.nextInt();
        if (2 == math) {
            System.out.println("That's right");
        } else {
            System.out.println("Wrong");
            System.exit(1);
        }
        try { Thread.sleep(2000); } catch (InterruptedException e) { e.printStackTrace(); }
        System.out.println("What is 2+2");
        math = scanner.nextInt();
        if (4 == math) {
            System.out.println("That's right");
        } else {
            System.out.println("Wrong");
            System.exit(1);
        }
        // Repeat the above pattern for each math question
        // ...
        // At the end of the quiz
        scanner.close();
    }
}

