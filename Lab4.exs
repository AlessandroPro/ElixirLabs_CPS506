#Name:   Alessandro Profenna
#Course: CPS506, Winter 2017, Lab 04
#Due:    2017.02.10 23:59
#Credit: This is entirely my own work


defmodule Lab4 do
  def div5(list) do
    IO.write("The number of elements in the given list divisible by 5 is: ")
    IO.puts(Enum.count(list, fn x -> (rem x, 5) == 0 end))
  end

  def sumList(list) do
    IO.write("The sum of the elements in the given list is: ")
    IO.puts(Enum.reduce(list, fn x, acc -> acc + x end))
  end

  def transposeMatrix(list, rowLength) do
    revList = Enum.map(list, fn x -> Enum.reverse(x) end)
    cond do
    (length(hd(list)) == 0) ->
      IO.puts("The transpose of the given matrix is: ")
    (length(hd(list)) == rowLength) ->
      IO.puts("The given matrix is: ")
      Enum.map(list, fn x -> IO.inspect(x) end)
      transposeMatrix(Enum.map(revList, fn [_|tail] -> tail end), rowLength)
      IO.inspect(Enum.map(revList, fn [head|_] -> head end))
    (true) ->
      transposeMatrix(Enum.map(list, fn [_|tail] -> tail end), rowLength)
      IO.inspect(Enum.map(list, fn [head|_] -> head end))
    end
  end
end

Lab4.div5([1,2,5,3,9,10,25,7,44,30])
Lab4.sumList([1,2,5,3,9,10,25,7,44,30])
Lab4.transposeMatrix([[1,2,3,4,8],[2,3,5,4,2],[5,4,6,6,7]], 5)
