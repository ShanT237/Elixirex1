# util.ex
defmodule Util do
  @moduledoc """
  Funciones reutilizables para cálculos.
  """

  @doc """
  Calcula el salario neto de un empleado.
  - horas > 160 → horas extra al 125%
  """
  def calcular_salario(nombre, horas, valor_hora) do
    extra_horas = max(horas - 160, 0)
    horas_normales = horas - extra_horas

    salario_base = horas_normales * valor_hora
    salario_extra = extra_horas * valor_hora * 1.25

    total = salario_base + salario_extra

    "Empleado #{nombre}, su salario neto es: $#{total}"
  end
end
