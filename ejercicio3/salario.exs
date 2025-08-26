# salario.exs
defmodule Salario do
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
