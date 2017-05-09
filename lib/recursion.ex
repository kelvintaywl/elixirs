defmodule Recursion do
  @moduledoc """
  Documentation for classic Recursive problems commonly discussed
  in typical Computer Science (CS) lectures
  """

  # note(kelvin): we define Fibonacci sequence's base case, first
  # so pattern matching will/should aid us in calculating sequences
  def fibonacci(n) when n <= 2 do
    1
  end

  def fibonacci(n) do
    fibonacci(n-1) + fibonacci(n-2)
  end

  # note(kelvin): base case to grab the last item in list:
  # when there is only one item in the list, we simply return it
  def pop([head | []]) do
    head
  end

  # note(kelvin): we use `_` as a throwaway; don't require this variable
  def pop([_ | tail]) do
    pop(tail)
  end

  def sort(lst, :merge) do
    mergeSort(lst)
  end

  def mergeSort([]) do
    []
  end

  def mergeSort([a]) do
    [a]
  end

  def mergeSort([a, b]) when a > b do
    [b, a]
  end

  def mergeSort([a, b]) do
    [a, b]
  end

  def mergeSort([a, b | tail]) do
    mergeSort([a, b]) |> merge(mergeSort(tail))
  end

  defp merge(lst, []) do
    lst
  end

  defp merge([], lst) do
    lst
  end

  defp merge([a | tail1], [b | tail2]) when a < b do
    [a] ++ merge(tail1, [b | tail2])
  end

  defp merge(list1, [b | tail2]) do
    [b] ++ merge(list1, tail2)
  end
end
