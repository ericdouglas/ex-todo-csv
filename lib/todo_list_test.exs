defmodule TodoListTest do
  use ExUnit.Case
  doctest TodoList

  test "if the app will load the data from the csv file correctly" do
    assert TodoList.init == "1,Study Erlang,2018-01-01,todo"
  end
end
