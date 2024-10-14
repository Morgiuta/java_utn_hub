import javax.swing.*;

public class ej6 {
    public static void main(String[] args) {
        double materias, horasDisponibles, horasPorMateria, restoHoras, minutosPorMateria;

        materias = Double.parseDouble(JOptionPane.showInputDialog("Ingrese la cantidad de materias que cursa"));
        horasDisponibles = Double.parseDouble(JOptionPane.showInputDialog("Ingrese la cantidad de horas diarias que tiene para estudiar"));

        horasPorMateria = horasDisponibles / materias;
        restoHoras = horasPorMateria - Math.floor(horasPorMateria);
        minutosPorMateria = restoHoras * 60;
        System.out.println("Tiene " + horasPorMateria + "hs y "+ minutosPorMateria + "min para estudiar cada materia");
        System.out.println(minutosPorMateria);
    }
}
