print("Welcome to the pizza delivery!")

size_prices = {"S": 15, "M": 20, "L": 25}
pepperoni_prices = {"S": 2, "M": 3, "L": 3}
extra_cheese_price = 1

size = input("Please enter preferred pizza size (S, M, L): ").upper()

if size in size_prices:
    total_bill = size_prices[size]
    
    if input("Do you want pepperoni (y/n): ").lower() == "y":
        total_bill += pepperoni_prices[size]
    
    if input("Do you want extra cheese (y/n): ").lower() == "y":
        total_bill += extra_cheese_price

    print(f"Your total bill is ${total_bill}")
else:
    print("Invalid pizza size. Please enter S, M, or L : ")