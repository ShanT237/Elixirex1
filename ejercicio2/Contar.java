import javax.swing.*;
import java.awt.*;
import java.io.*;

/**
 * La clase Contar solicita una palabra al usuario, la envía a un script Elixir
 * para calcular su longitud y muestra el resultado en una ventana.
 */
public class Contar {
    /**
     * Método principal que gestiona la interacción con el usuario y la ejecución del script Elixir.
     *
     * @param args Argumentos de la línea de comandos (no utilizados).
     */
    public static void main(String[] args) {
        try {
            // Pedir palabra al usuario
            String palabra = JOptionPane.showInputDialog("Ingrese una palabra:");

            if (palabra == null || palabra.trim().isEmpty()) {
                JOptionPane.showMessageDialog(null, "No se ingresó ninguna palabra.", "Error", JOptionPane.ERROR_MESSAGE);
                return;
            }

            // Ejecutar Elixir con la palabra
            ProcessBuilder builder = new ProcessBuilder("elixir", "contar.exs", palabra);
            Process process = builder.start();

            BufferedReader reader = new BufferedReader(new InputStreamReader(process.getInputStream()));
            String resultado = reader.readLine();

            // Mostrar en ventana
            JFrame frame = new JFrame("Longitud de Palabra");
            JLabel label = new JLabel("La palabra \"" + palabra + "\" tiene " + resultado + " letras.", SwingConstants.CENTER);
            label.setFont(new Font("Arial", Font.BOLD, 20));
            frame.add(label);
            frame.setSize(500, 200);
            frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
            frame.setLocationRelativeTo(null);
            frame.setVisible(true);

        } catch (Exception e) {
            e.printStackTrace();
            JOptionPane.showMessageDialog(null, "Error al procesar: " + e.getMessage(), "Error", JOptionPane.ERROR_MESSAGE);
        }
    }
}
