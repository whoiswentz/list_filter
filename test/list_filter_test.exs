defmodule ListFilterTest do
  use ExUnit.Case

  describe "ListFilterTest" do
    test "Count odd number elements" do
      list = ["1", "2", "3", "banana"]
      want = 2

      response = ListFilter.call(list)

      assert response === want
    end

    test "Passing a list withou odd elements" do
      list = ["2", "banana"]
      want = 0

      response = ListFilter.call(list)

      assert response === want
    end
  end
end
