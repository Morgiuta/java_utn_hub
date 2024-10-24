import java.util.Scanner;

public class ej1 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        String[] actividades = {"estudiar", "hacer ejercicios", "leer", "tiempo libre"};
        int tiempoTotal = 0;

        for (String actividad : actividades) {
            System.out.print("¿Cuántas horas dedicas a " + actividad + "?: ");
            int horas = scanner.nextInt();
            tiempoTotal += horas;
        }

        System.out.println("El tiempo total que dedicas a tus actividades es: " + tiempoTotal + " horas.");

        scanner.close();
    }
}
