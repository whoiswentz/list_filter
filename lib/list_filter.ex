defmodule ListFilter do
  require Integer

  def call(list) do
    list
    |> Enum.filter(&is_odd?/1)
    |> Enum.count()
  end

  def is_odd?(element) do
    case Integer.parse(element) do
      {number, _} -> Integer.is_odd(number)
      _ -> false
    end
  end
end
