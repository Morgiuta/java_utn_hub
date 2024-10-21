import java.util.Arrays;

public class ej8 {
    public static void main(String[] args) {
        String[] empleados = {"Martin", "Carlos", "German", "Pablo", "Luis"};
        int[] horasTrabajadas = {15, 5, 20, 35, 45};

        calcularPagoSemanal(empleados, horasTrabajadas);
    }

    private static void calcularPagoSemanal(String[] empleados, int[] horasTrabajadas) {
        int[] pago = new int[5];
        System.out.println("Pago semanal por empleado");
        for (int i = 0; i < horasTrabajadas.length; i++) {
            pago[i] = horasTrabajadas[i] * 15;
            System.out.println(empleados[i] + ". Trabajo " + horasTrabajadas[i] + "hs. Le corresponde: $" + pago[i]);
        }
    }
}
