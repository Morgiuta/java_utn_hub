public class ej9 {
    public static void main(String[] args) {
        int[] precionsOriginales = {1000, 3200, 565, 8599, 3699};

        calcularPrecioFinal(precionsOriginales);
    }

    private static void calcularPrecioFinal(int[] precionsOriginales) {
        float[] precioConDescuento = new  float[5];
        System.out.println("Lista con descuentos aplicados:");
        for (int i = 0; i < precioConDescuento.length; i++) {
            precioConDescuento[i] = (float) (precionsOriginales[i] * 0.90);
            System.out.println("$" + precioConDescuento[i] + " ");
        }
    }
}
