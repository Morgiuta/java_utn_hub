import java.util.Scanner;

public class ej2 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Ingrese la cantidad de empleados que tiene: ");
        int cantidad = scanner.nextInt();
        System.out.println("Ingrese la cantidad de horas trabajadas por cada empleado");

        for (int i = 0; i < cantidad; i++) {
            System.out.print("Empleado " + (i+1) + ": ");
            int horas = scanner.nextInt();
            System.out.println("Salario del Empleado " + (i + 1) + ": $" + (horas * 15));
        }

    }
}
