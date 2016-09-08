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

  test "verse 2" do
    expected = "2 bottles of beer on the wall, " <>
      "2 bottles of beer.\n" <>
      "Take one down and pass it around, " <>
      "1 bottle of beer on the wall.\n"
    assert expected == Bottles.verse(2)
  end

  test "verse 1" do
    expected = "1 bottle of beer on the wall, " <>
      "1 bottle of beer.\n" <>
      "Take it down and pass it around, " <>
      "no more bottles of beer on the wall.\n"
    assert expected == Bottles.verse(1)
  end

  test "verse 0" do
    expected = "No more bottles of beer on the wall, " <>
      "no more bottles of beer.\n" <>
      "Go to the store and buy some more, " <>
      "99 bottles of beer on the wall.\n"
    assert expected == Bottles.verse(0)
  end
end
