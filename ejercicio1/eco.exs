defmodule Eco do
  def main(args) do
    mensaje = Enum.join(args, " ")
    IO.puts(String.upcase(mensaje))
  end
end

Eco.main(System.argv())
