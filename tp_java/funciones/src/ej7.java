public class ej7 {
    public static void main(String[] args) {
        int[] compras = {1500, 300, 600, 400, 550};

        aplicarDescuento(compras);
    }

    private static void aplicarDescuento(int[] compras) {
        float[] comprasDescuento = new float[5];
        for (int i = 0; i < comprasDescuento.length; i++) {
            if (compras[i] > 500) {
                comprasDescuento[i] = (float) (compras[i] * 0.85);
                System.out.println("Compras con descuento aplicado: " + comprasDescuento[i]);
            }
        }
    }
}
