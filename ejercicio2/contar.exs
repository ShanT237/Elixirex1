# contar.exs
defmodule Contar do
  @moduledoc """
  El módulo Contar recibe una palabra como argumento y muestra su longitud.
  """

  @doc """
  Recibe una lista de argumentos (`args`), espera una sola palabra y muestra su longitud.

  ## Parámetros

    - args: Lista de cadenas (argumentos de la línea de comandos).

  ## Ejemplo

      Contar.main(["hola"])
      # Imprime: 4

  Si no se recibe exactamente una palabra, muestra un mensaje de error.
  """
  def main(args) do
    case args do
      [palabra] ->
        longitud = String.length(palabra)
        IO.puts("#{longitud}")

      _ ->
        IO.puts("Error: no se recibió una palabra")
    end
  end
end

Contar.main(System.argv())
