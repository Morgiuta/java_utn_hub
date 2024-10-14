import javax.swing.*;

public class ej7 {
    public static void main(String[] args) {
        double satisfaccion, estres, salud, amor, porcentaje;

        satisfaccion = Double.parseDouble(JOptionPane.showInputDialog("Ingrese del 1 al 10 su estado de Satisfaccion"));
        estres = Double.parseDouble(JOptionPane.showInputDialog("Ingrese del 1 al 10 su estado de Estres"));
        salud = Double.parseDouble(JOptionPane.showInputDialog("Ingrese del 1 al 10 su estado de salud"));
        amor = Double.parseDouble(JOptionPane.showInputDialog("Ingrese del 1 al 10 su estado en el amor"));

        porcentaje = (satisfaccion + estres + salud + amor) / 4;

        System.out.println("Su porcentaje de felicidad es: " + porcentaje*10 + "%");
    }
}
