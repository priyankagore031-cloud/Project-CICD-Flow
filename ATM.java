import java.util.Scanner;

public class ATM {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        double balance = 10000; // initial balance

        System.out.println("Welcome to ATM");
        System.out.print("Enter amount to withdraw: ");
        double amount = sc.nextDouble();

        if (amount <= balance) {
            balance = balance - amount;
            System.out.println("Please collect your cash");
            System.out.println("Remaining balance: " + balance);
        } else {
            System.out.println("Insufficient balance!");
        }
    }
}