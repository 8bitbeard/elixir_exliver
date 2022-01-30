defmodule Exlivery.Users.UserTest do
  use ExUnit.Case

  alias Exlivery.Users.User

  import Exlivery.Factory

  describe "build/5" do
    test "when all params are valid, returns the user" do
      response =
        User.build(
          "Factory User",
          "factory_user@example.com",
          "Rua das bananeiras, 35",
          "12345678900",
          30
        )

      expected_response = {:ok, build(:user)}

      assert response == expected_response
    end

    test "when there are invalid params, returns an error" do
      response =
        User.build(
          "User Jr",
          "user_jr@example.com",
          "Rua de Teste",
          "123456789",
          17
        )

      expected_response = {:error, "Invalid parameters"}

      assert response == expected_response
    end
  end
end
