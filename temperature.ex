defmodule Temperature do

  def celsiusToFahrenheit(celsius) do
    (celsius * 1.8) + 32
  end

  def fahrenheitToCelsius(fahrenheit) do
    (fahrenheit - 32) / 1.8
  end

  def celsiusToKelvin(celsius) do
    # TODO: check that returned value cannot be less than 0 K
    celsius + 273.15
  end

  def fahrenheitToKelvin(fahrenheit) do
    fahrenheit
    |> fahrenheitToCelsius
    |> celsiusToKelvin
  end

  def prettyPrint(temperature) do
    prettyPrint(temperature, :celsius)
  end

  def prettyPrint(celsius, :celsius) do
    IO.puts("#{celsius} °C")
  end

  def prettyPrint(fahrenheit, :fahrenheit) do
    IO.puts("#{fahrenheit} °F")
  end

end
