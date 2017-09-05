defmodule TodoListTest do
  use ExUnit.Case
  doctest TodoList

  test "if the app will load and parse the data from the csv file correctly" do
    assert TodoList.init == %TodoList{
      last_id: 1,
      todos: %{
        1 => %Todo{
          id: 1,
          task: "Study Erlang",
          date: "2018-01-01",
          status: "todo"
        }
      }
    }
  end
end
