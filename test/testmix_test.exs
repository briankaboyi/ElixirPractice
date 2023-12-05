defmodule TestmixTest do
  use ExUnit.Case
  doctest Testmix

  test "greets the world" do
    assert Testmix.hello() == :world
  end
end
