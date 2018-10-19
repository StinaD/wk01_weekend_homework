def pet_shop_name(shop)
  return shop[:name]
end


def total_cash(shop)
 return shop[:admin][:total_cash]
end


def add_or_remove_cash(shop, amount)
  return new_balance = shop[:admin][:total_cash] += amount
end


def pets_sold(shop)
 return shop[:admin][:pets_sold]
end


def increase_pets_sold(shop, number_of_pets_sold)
  return shop[:admin][:pets_sold] += number_of_pets_sold
end


def stock_count(shop)
  return shop[:pets].length
end


def pets_by_breed(shop, breed)
  pets_by_breed = []
  for animal in shop[:pets]
    if animal[:breed] == breed
      pets_by_breed.push(animal)
    end
  end
  return pets_by_breed
end


def find_pet_by_name(shop, name)
 hash_for_pet = {}
  for animal in shop[:pets]
    if animal[:name] == name
      hash_for_pet.push(animal)
    end
  end
 return hash_for_pet
end
