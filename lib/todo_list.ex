defmodule TodoList do
  @moduledoc """
  Todo list application to work with .csv files through IEx.
  """

  @path_env %{dev: ["lib", "todos.csv"], test: ["lib", "todos_test.csv"]}
  @path Path.join(@path_env[Mix.env])

  def init do
    @path
    |> read_file!
  end

  defp read_file!(path) do
    path
    |> File.stream!
    |> Enum.map(&String.replace(&1, "\n", ""))
    |> to_string
  end
end
