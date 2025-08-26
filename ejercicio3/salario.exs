# salario.exs
defmodule Salario do
  @moduledoc """
  El módulo Salario calcula el salario de una persona usando los argumentos recibidos:
  nombre, horas trabajadas y valor por hora. Imprime el resultado para que pueda ser capturado por otro programa.
  """

  @doc """
  Recibe una lista de argumentos (`args`) con el nombre, las horas trabajadas y el valor por hora.
  Calcula el salario usando `Util.calcular_salario/3` y muestra el resultado.

  ## Parámetros

    - args: Lista de cadenas [nombre, horas, valor].

  ## Ejemplo

      Salario.main(["Ana", "40", "100"])
      # Imprime: El salario de Ana es 4000
  """
  def main(args) do
    [nombre, horas_str, valor_str] = args

    horas = String.to_integer(horas_str)
    valor = String.to_integer(valor_str)

    mensaje = Util.calcular_salario(nombre, horas, valor)

    # imprimir para que Java lo capture
    IO.puts(mensaje)
  end
end

Salario.main(System.argv())
