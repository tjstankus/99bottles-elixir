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

  def container(number) do
    if number == 1 do
      "bottle"
    else
      "bottles"
    end
  end

  def pronoun(number) do
    if number == 1 do
      "it"
    else
      "one"
    end
  end

  def quantity(number) do
    if number == 0 do
      "no more"
    else
      Integer.to_string(number)
    end
  end

  def action(number) do
    if number == 0 do
      "Go to the store and buy some more"
    else
      "Take #{pronoun(number)} down and pass it around"
    end
  end

  def successor(number) do
    if number == 0 do
      99
    else
      number - 1
    end
  end
end
