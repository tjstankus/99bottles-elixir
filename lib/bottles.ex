defmodule Bottles do
  def song do
    verses(99, 0)
  end

  def verses(high, low) do
    Enum.map_join(high..low, "\n", &(verse(&1)))
  end

  def verse(number) do
    case number do
      2 ->
        "2 bottles of beer on the wall, " <>
          "2 bottles of beer.\n" <>
          "Take one down and pass it around, " <>
          "1 bottle of beer on the wall.\n"
      1 ->
        "1 bottle of beer on the wall, " <>
          "1 bottle of beer.\n" <>
          "Take it down and pass it around, " <>
          "no more bottles of beer on the wall.\n"
      0 ->
        "No more bottles of beer on the wall, " <>
          "no more bottles of beer.\n" <>
          "Go to the store and buy some more, " <>
          "99 bottles of beer on the wall.\n"
      _ ->
        "#{number} bottles of beer on the wall, " <>
          "#{number} bottles of beer.\n" <>
          "Take one down and pass it around, " <>
          "#{number - 1} bottles of beer on the wall.\n"
    end
  end
end
