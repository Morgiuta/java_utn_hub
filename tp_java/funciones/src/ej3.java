public class ej3 {
    public static void main(String[] args) {
        String[] clientes = {"Maritn", "Jesus", "Silvio", "Hernan", "Tomas"};
        int[] facturasPendientes = {100, 600, 300, 1500, 500};

        enviarFacturas(clientes, facturasPendientes);
    }
    public static void enviarFacturas (String[] clientes, int[] facturasPendientes) {
        System.out.println("Clientes con deudas mayores a $500");
        for (int i = 0; i < 4; i++) {
            if (facturasPendientes[i] > 500) {
                System.out.println(clientes[i] + " debe: $" + facturasPendientes[i]);
            }
        }
    }
}
