import java.util.Scanner;

public class ej3 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Ingrese la cantidad de productos que tiene: ");
        int producto = scanner.nextInt();
        System.out.println("Ingrese la cantidad disponible de cada producto");

        for (int i = 0; i < producto; i++) {
            System.out.print("Producto " + (i+1) + ": ");
            int cantidad = scanner.nextInt();
            if (cantidad < 5){
                System.out.println("Es necesario hacer un pedido por el Producto " + (i + 1));
            }
        }
    }
}
