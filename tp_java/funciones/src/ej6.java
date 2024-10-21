import java.util.Arrays;

public class ej6 {
    public static void main(String[] args) {
        float[] facturas = {10, 25, 6, 8, 14};
        calcularImpuesto(facturas);
    }
    public static void calcularImpuesto(float[] facturas){
        float [] facturaIva = new float[5];
        for (int i = 0; i < facturas.length; i++) {
            facturaIva[i] = (float) (facturas[i] * 1.21);
        }
        System.out.println("Precios con IVA" + Arrays.toString(facturaIva));
    }
}
