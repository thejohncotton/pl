defmodule ToyProblem do
  def to_pig_latin(string) do
    vowels = ["a","e","i","o","u"]
    cond do
    String.starts_with?(string, vowels) -> string <> "ay"
    true ->
      input_list = String.split(string, "", trim: true)
      clusters = String.split(string, vowels)
      first_cluster = hd(clusters)
      rest_of_word = List.to_string(Enum.drop(input_list, String.length(first_cluster)))

      rest_of_word <> first_cluster <> "ay"


     

    end
  end
end
