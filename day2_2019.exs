intcodes = File.stream!("C:/Users/Manicharan Kollipara/Desktop/aoc/day2.txt", :line)
|> Enum.map(fn x -> String.split(x, ",") end)

IO.puts(hd(intcodes))
