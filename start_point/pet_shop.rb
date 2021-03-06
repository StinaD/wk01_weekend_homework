#1
def pet_shop_name(shop)
  shop[:name]
end

#2
def total_cash(shop)
  shop[:admin][:total_cash]
end

#3 and 4
def add_or_remove_cash(shop, amount)
  new_balance = shop[:admin][:total_cash] += amount
end

# 5
def pets_sold(shop)
 shop[:admin][:pets_sold]
end

# 6
def increase_pets_sold(shop, number_of_pets_sold)
  shop[:admin][:pets_sold] += number_of_pets_sold
end

# 7
def stock_count(shop)
  shop[:pets].length
end

#8
def pets_by_breed(shop, breed)
  pets_by_breed = []
  for animal in shop[:pets]
    pets_by_breed << (animal) if animal[:breed] == breed
  end
  return pets_by_breed
end

# 9 and 10
def find_pet_by_name(shop, name)
  for animal in shop[:pets]
    return (animal) if animal[:name] == name
  end
  return nil
end

# 11
def remove_pet_by_name(shop, name)
  for animal in shop[:pets]
    shop[:pets].delete(animal) if animal[:name] == name
  end
  return shop[:pets].find_index(animal[:name])
end


# 12
def add_pet_to_stock(shop, new_pet)
  shop[:pets].push(new_pet)
end


# 13
def customer_cash(customer)
  customer[:cash]
end


# 14
def remove_customer_cash(customer, amount)
  customer[:cash] -= amount
end


# 15
def customer_pet_count(customer)
  customer[:pets].length
end


# 16a
def add_pet_to_customer(customer, new_pet)
  customer[:pets].push(new_pet)
end

# 16b
def test_customer_pet_count(customer)
  customer[:pets].length
end


#OPTIONAL

# 17 and 18
def customer_can_afford_pet(customer, pet)
  customer[:cash] >= pet[:price]
end


# 19 and 20 and 21
def sell_pet_to_customer(shop, pet, customer)
   if pet != nil && customer_can_afford_pet(customer, pet)
    add_pet_to_customer(customer, pet)
    shop[:pets].delete(pet) #not using function to remove pet by name as we already have the pet object, but the function would need to search the shop for the pet by name again.
    increase_pets_sold(shop, 1)
    remove_customer_cash(customer, pet[:price])
    add_or_remove_cash(shop, pet[:price])
  end
end
