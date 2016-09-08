defmodule BottlesTest do
  use ExUnit.Case
  doctest Bottles

  test "first verse" do
    expected = "99 bottles of beer on the wall, " <>
      "99 bottles of beer.\n" <>
      "Take one down and pass it around, " <>
      "98 bottles of beer on the wall.\n"
    assert expected == Bottles.verse(99)
  end

  test "another verse" do
    expected = "3 bottles of beer on the wall, " <>
      "3 bottles of beer.\n" <>
      "Take one down and pass it around, " <>
      "2 bottles of beer on the wall.\n"
    assert expected == Bottles.verse(3)
  end
end
