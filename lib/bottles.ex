defmodule Bottles do
  def song do
    verses(99, 0)
  end

  def verses(high, low) do
    Enum.map_join(high..low, "\n", &(verse(&1)))
  end

  def verse(number) do
    "#{BottleNumber.quantity(number) |> String.capitalize} #{BottleNumber.container(number)} of beer on the wall, " <>
      "#{BottleNumber.quantity(number)} #{BottleNumber.container(number)} of beer.\n" <>
      "#{BottleNumber.action(number)}, " <>
      "#{BottleNumber.successor(number) |> BottleNumber.quantity} #{BottleNumber.container(number-1)} of beer on the wall.\n"
  end
end

defmodule BottleNumber do
  def container(6), do: "six-pack"
  def container(1), do: "bottle"
  def container(_), do: "bottles"

  def pronoun(1), do: "it"
  def pronoun(_), do: "one"

  def quantity(6), do: "1"
  def quantity(0), do: "no more"
  def quantity(number), do: Integer.to_string(number)

  def action(0), do: "Go to the store and buy some more"
  def action(number), do: "Take #{pronoun(number)} down and pass it around"

  def successor(0), do: 99
  def successor(number), do: number - 1
end
