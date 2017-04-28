defmodule ColourTest do
  use ExUnit.Case
  doctest Colour

  test "rgbToHex" do
    assert Colour.rgbToHex(255, 255, 255) == "FFFFFF"
  end
end
