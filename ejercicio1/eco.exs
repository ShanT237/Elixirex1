defmodule Eco do
  @moduledoc """
  El módulo Eco imprime en mayúsculas los argumentos recibidos desde la línea de comandos.
  """

  @doc """
  Recibe una lista de argumentos (`args`), los une en una cadena y la imprime en mayúsculas.

  ## Parámetros

    - args: Lista de cadenas (argumentos de la línea de comandos).

  ## Ejemplo

      Eco.main(["hola", "mundo"])
      # Imprime: HOLA MUNDO
  """
  def main(args) do
    mensaje = Enum.join(args, " ")
    IO.puts(String.upcase(mensaje))
  end
end

Eco.main(System.argv())
