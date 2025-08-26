// SalarioForm.java
import java.io.BufferedReader;
import java.io.InputStreamReader;

import javax.swing.JOptionPane;

public class Salario {
    public static void main(String[] args) {
        try {
            // Capturar datos del empleado
            String nombre = JOptionPane.showInputDialog("Ingrese el nombre del empleado:");
            String horasStr = JOptionPane.showInputDialog("Ingrese las horas trabajadas:");
            String valorStr = JOptionPane.showInputDialog("Ingrese el valor por hora:");

            // Ejecutar elixir salario.exs con los datos
            ProcessBuilder pb = new ProcessBuilder("elixir", "salario.exs", nombre, horasStr, valorStr);
            pb.redirectErrorStream(true);
            Process process = pb.start();

            // Leer la salida de Elixir
            BufferedReader reader = new BufferedReader(new InputStreamReader(process.getInputStream()));
            String resultado = reader.readLine();

            // Mostrar resultado en JOptionPane
            JOptionPane.showMessageDialog(null, resultado);

            process.waitFor();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
