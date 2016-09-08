defmodule Bottles do
  def verse(number) do
    case number do
      99 ->
        "99 bottles of beer on the wall, " <>
          "99 bottles of beer.\n" <>
          "Take one down and pass it around, " <>
          "98 bottles of beer on the wall.\n"
      3 ->
        "3 bottles of beer on the wall, " <>
          "3 bottles of beer.\n" <>
          "Take one down and pass it around, " <>
          "2 bottles of beer on the wall.\n"
    end
  end
end
