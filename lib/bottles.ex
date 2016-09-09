defmodule Bottles do
  def song do
    verses(99, 0)
  end

  def verses(high, low) do
    Enum.map_join(high..low, "\n", &(verse(&1)))
  end

  def verse(number) do
    "#{quantity(number) |> String.capitalize} #{container(number)} of beer on the wall, " <>
      "#{quantity(number)} #{container(number)} of beer.\n" <>
      "#{action(number)}, " <>
      "#{successor(number) |> quantity} #{container(number-1)} of beer on the wall.\n"
  end

  def container(1), do: "bottle"
  def container(number), do: "bottles"

  def pronoun(1), do: "it"
  def pronoun(number), do: "one"

  def quantity(0), do: "no more"
  def quantity(number), do: Integer.to_string(number)

  def action(0), do: "Go to the store and buy some more"
  def action(number), do: "Take #{pronoun(number)} down and pass it around"

  def successor(0), do: 99
  def successor(number), do: number - 1
end
