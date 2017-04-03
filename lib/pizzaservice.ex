defmodule Pizzaservice do
	def menu do
		%{
			"Cheese" => 8.5,
			"Pepperoni" => 10
		}
	end

	def order_pizza(name) do
		case Map.get(menu, name) do
			nil -> {:error, "No such pizza #{name}"}
			price -> {:ok, %{price: price, msg: "Enjoy!"}}
		end
	end
end