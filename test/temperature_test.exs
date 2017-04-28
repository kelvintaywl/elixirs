defmodule TemperatureTest do
  use ExUnit.Case
  doctest Temperature

  test "fahrenheitToCelsius" do
    assert Temperature.fahrenheitToCelsius(32) == 0
  end

  test "fahrenheitToKelvin" do
    assert Temperature.fahrenheitToKelvin(32) == 273.15
  end

  test "celsiusToKelvin" do
    assert Temperature.celsiusToKelvin(32) == 305.15
  end

  test "celsiusToFahrenheit" do
    assert Temperature.celsiusToFahrenheit(0) == 32
  end

  test "prettyPrint" do
    assert Temperature.prettyPrint(32) == "32 °C"
  end

  test "prettyPrint celsius" do
    assert Temperature.prettyPrint(32, :celsius) == "32 °C"
  end

  test "prettyPrint fahrenheit" do
    assert Temperature.prettyPrint(32, :fahrenheit) == "32 °F"
  end
end
