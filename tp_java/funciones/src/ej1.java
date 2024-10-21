import java.util.Random;

public class ej1 {
    public static void main(String[] args) {
        int[] ventas = new int[29];
        Random random = new Random();

        for (int i = 0; i < 29; i++) {
            ventas[i] = random.nextInt(0,100);
        }

        calcularInresosMensuales(ventas);
    }
    public static void calcularInresosMensuales(int[] ventas){
        int suma = 0;
        for (int i = 0; i < 29; i++) {
            suma += ventas[i];
        }
        System.out.println("Total de ingresos mensuales: " + suma);
    }
}
