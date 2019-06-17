defmodule ToyProblemTest do
  use ExUnit.Case
  doctest ToyProblem

  test "pig returns igpay" do
    assert ToyProblem.to_pig_latin("pig") == "igpay"
  end
  test "zillion returns illionzay" do
    assert ToyProblem.to_pig_latin("zillion") == "illionzay"
  end

  test "start with vowel returns only input<>ay" do
    assert ToyProblem.to_pig_latin("earring")  == "earringay"
  end

  test "breaks on consonant cluster" do
    assert ToyProblem.to_pig_latin("clasp")  == "aspclay"
    assert ToyProblem.to_pig_latin("chrome")  == "omechray"
  end

  

end
