# contar.exs
defmodule Contar do
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
