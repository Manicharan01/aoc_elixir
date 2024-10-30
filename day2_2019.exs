defmodule Traverse do
  def calculate_the_operation()
end

[file_content] =
  File.stream!("/home/charan/Downloads/aoc/day2.txt", :line)
  |> Enum.to_list()
  |> Enum.map(fn x -> String.trim(x) end)

intcodes = String.split(file_content, ",")

IO.inspect(intcodes)
