defmodule Colour do
  @moduledoc """
  Documentation for Colour.
  """

  defp digitToHex(digit) when is_integer(digit) and (0 <= digit and digit < 16) do
    String.at("0123456789ABCDEF", digit)
  end

  defp valueToHex(val) when is_integer(val) and 0 <= val and val < 256 do
    first = val
            |> div(16)
            |> digitToHex
    next = val
           |> rem(16)
           |> digitToHex
    first <> next
  end

  def rgbToHex(r, g, b) do
    valueToHex(r) <> valueToHex(g) <> valueToHex(b)
  end
end
