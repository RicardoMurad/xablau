defmodule MyMacrosTest do
  use ExUnit.Case
  doctest MyMacros

  test "greets the world" do
    assert MyMacros.hello() == :world
  end
end
