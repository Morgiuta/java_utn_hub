import java.util.Random;

public class ej4 {
    public static void main(String[] args) {
        String[] clientes = {"Martin", "Jesus", "Silvio", "Hernan", "Tomas"};
        int[] compras = new int[4];
        Random random = new Random();

        for (int i = 0; i < 4; i++) {
            compras[i] = random.nextInt(0, 20);
        }

        calcularDescuentos(clientes, compras);
    }

    public static void calcularDescuentos(String[] clientes, int[] compras) {
        System.out.println("Clientes a los que se le aplica el descuento del 10%");
        int count = 0;

        for (int i = 0; i < 4; i++) {
            if (compras[i] > 10) {
                System.out.println(clientes[i] + " Recibe el descuento. Al haber comprado: " + compras[i] + " productos");
                count++;
            }
        }

        if (count == 0) {
            System.out.println("No hay clientes a los cluales aplicar el descuento");
        }
    }
}