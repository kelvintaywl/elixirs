defmodule RecursionTest do
  use ExUnit.Case
  doctest Recursion

  test "fibonacci" do
    assert Recursion.fibonacci(0) == 1
    assert Recursion.fibonacci(-1) == 1
    assert Recursion.fibonacci(1) == 1
    assert Recursion.fibonacci(3) == 2
    assert Recursion.fibonacci(5) == 5
    assert Recursion.fibonacci(7) == 13
    assert Recursion.fibonacci(9) == 34
  end

  test "pop" do
    assert Recursion.pop([1]) == 1
    assert Recursion.pop([1, 2]) == 2
    assert Recursion.pop([1, 2, 3]) == 3
    assert Recursion.pop([1, 2, 3, 4]) == 4
  end

  test "mergeSort" do
    assert Recursion.sort([], :merge) == []
    assert Recursion.sort([1], :merge) == [1]
    assert Recursion.sort([1, 2, 3, 4], :merge) == [1, 2, 3, 4]
    assert Recursion.sort([8, 7, 6, 5], :merge) == [5, 6, 7, 8]
    assert Recursion.sort([1, -1, 0, -2], :merge) == [-2, -1, 0, 1]
  end
end
