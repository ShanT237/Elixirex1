import javax.swing.*;
import java.io.*;

public class Mensaje {
    public static void main(String[] args) {
        try {
            // Ventana para ingresar mensaje
            String input = JOptionPane.showInputDialog(null, "Escribe un mensaje:", "Entrada", JOptionPane.PLAIN_MESSAGE);

            if (input != null && !input.trim().isEmpty()) {
                // Llamar a Elixir pasando el mensaje
                ProcessBuilder pb = new ProcessBuilder("elixir", "eco.exs", input);
                pb.redirectErrorStream(true);

                Process process = pb.start();

                BufferedReader reader = new BufferedReader(new InputStreamReader(process.getInputStream()));
                StringBuilder output = new StringBuilder();
                String line;
                while ((line = reader.readLine()) != null) {
                    output.append(line);
                }

                process.waitFor();

                // Mostrar resultado en otra ventanita
                JOptionPane.showMessageDialog(null, "Elixir respondió: " + output.toString(), "Resultado", JOptionPane.INFORMATION_MESSAGE);
            } else {
                JOptionPane.showMessageDialog(null, "No ingresaste ningún mensaje", "Error", JOptionPane.ERROR_MESSAGE);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

