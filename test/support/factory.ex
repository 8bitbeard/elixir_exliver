defmodule Exlivery.Factory do
  use ExMachina

  alias Exlivery.Users.User
  alias Exlivery.Orders.{Item, Order}

  def user_factory do
    %User{
      name: "Factory User",
      email: "factory_user@example.com",
      cpf: "12345678900",
      age: 30,
      address: "Rua das bananeiras, 35"
    }
  end

  def item_factory do
    %Item{
      description: "Pizza de pepperoni",
      category: :pizza,
      quantity: 1,
      unit_price: Decimal.new("35.5")
    }
  end

  def order_factory do
    %Order{
      delivery_address: "Rua das bananeiras, 35",
      items: [
        build(:item),
        build(:item,
          category: :japosena,
          description: "Temaki de atum",
          quantity: 2,
          unit_price: Decimal.new("20.50")
        )
      ],
      total_price: Decimal.new("76.50"),
      user_cpf: "12345678900"
    }
  end
end
