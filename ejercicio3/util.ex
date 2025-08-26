# util.ex
defmodule Util do
  @moduledoc """
  Funciones reutilizables para cálculos.
  """

  @doc """
  Calcula el salario neto de un empleado.

  Si las horas trabajadas son mayores a 160, las horas extra se pagan al 125%.

  ## Parámetros

    - nombre: Nombre del empleado (cadena).
    - horas: Número total de horas trabajadas (entero).
    - valor_hora: Valor por hora (entero).

  ## Retorno

    - Cadena con el mensaje del salario neto.

  ## Ejemplo

      iex> Util.calcular_salario("Ana", 170, 100)
      "Empleado Ana, su salario neto es: $11250.0"
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
