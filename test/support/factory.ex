defmodule Exlivery.Factory do
  use ExMachina

  alias Exlivery.Users.User

  def user_factory do
    %User{
      name: "Factory User",
      email: "factory_user@example.com",
      cpf: "12345678900",
      age: 30,
      address: "Rua das bananeiras, 35"
    }
  end
end
