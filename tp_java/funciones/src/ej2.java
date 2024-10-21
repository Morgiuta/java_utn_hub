public class ej2 {
    public static void main(String[] args) {
        String[] productos = {"Remera", "Zapatilla", "Pantalon", "Gorra", "Medias"};
        int[] stocks = {5, 12, 2, 8, 4};

        generarReporteBajoStock(productos, stocks);
    }

    public static void generarReporteBajoStock(String[] productos, int[] stocks) {
        System.out.println("Productos con bajo stock:");
        for (int i = 0; i < productos.length; i++) {
            if (stocks[i] < 5) {
                System.out.println(productos[i] + " - Unidades: " + stocks[i]);
            }
        }
    }
}