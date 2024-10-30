defmodule Recursion do
  def calculate_fuel_for_fuel(n) when n > 0 do
    n + calculate_fuel_for_fuel(div(n, 3) - 2)
  end

  def calculate_fuel_for_fuel(n) when n <= 0 do
    0
  end
end

File.stream!("/home/charan/Downloads/aoc/day1.txt", :line)
|> Enum.to_list()
|> Enum.map(fn x -> String.trim(x) end)
|> Enum.filter(fn x -> String.trim(x) != "" end)
|> Enum.map(fn x -> String.to_integer(x) end)
|> Enum.map(fn x -> div(x, 3) - 2 end)
|> Enum.map(fn x -> Recursion.calculate_fuel_for_fuel(x) end)
|> Enum.sum()
|> IO.puts()
