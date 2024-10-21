public class ej5 {
    public static void main(String[] args) {
        int[] satisfaccion = {1, 5, 4, 6, 7};
        calcularPromedioStasfaccion(satisfaccion);
    }
    public static void calcularPromedioStasfaccion (int[] satisfaccion) {
        float promedio;
        int suma = 0;
            for (int j : satisfaccion) {
                suma += j;
            }
            promedio = (float) suma /satisfaccion.length;
            System.out.println("Promedio de satisfaccion: " + promedio);
        }
}
