import os

print("Welcome to the pizza delivery!")

size_prices = {"S": 15, "M": 20, "L": 25}
pepperoni_prices = {"S": 2, "M": 3, "L": 3}
extra_cheese_price = 1

# Retrieve values from environment variables
size = os.getenv("PIZZA_SIZE", "M").upper()
pepperoni = os.getenv("PEPPERONI", "n").lower()
extra_cheese = os.getenv("EXTRA_CHEESE", "n").lower()

if size in size_prices:
    total_bill = size_prices[size]

    if pepperoni == "y":
        total_bill += pepperoni_prices[size]

    if extra_cheese == "y":
        total_bill += extra_cheese_price

    print(f"Your total bill is ${total_bill}")
else:
    print("Invalid pizza size. Please enter S, M, or L.")
