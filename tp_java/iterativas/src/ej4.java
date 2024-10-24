import java.util.Scanner;

public class ej4 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int suma = 0;
        System.out.println("Ingrese las ventas de cada dia: ");

        for (int i = 0; i < 7; i++) {
            System.out.print("Ventas del dia " + (i + 1) + ": ");
            int ventas = scanner.nextInt();
            suma += ventas;
        }
        System.out.println("Ventas de la sema: " + suma);
    }
}
