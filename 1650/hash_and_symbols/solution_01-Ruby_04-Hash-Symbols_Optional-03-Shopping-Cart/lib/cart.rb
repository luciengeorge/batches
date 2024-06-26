# This file contains methods related to your shopping cart.
# You should complete it according to the instructions in the TODO comments

def add_to_cart(cart, product)
  # TODO: you get a cart and a product. Add the product to the cart!
  cart << product
end

def cart_to_s(cart)
  # TODO: you get a cart, return a coma-separated String list of the contained products
  # Display the list of products only 👇
  # cart.join(', ')
  # Extra: display the list of products and their quantity 👇
  cart.map { |item| cart.count(item) > 1 ? "#{item} x #{cart.count(item)}" : item }.uniq.join(',')
end

def cart_total_price(cart, store_items)
  # TODO: you get a cart and the store items with their prices. Return the total
  # price of the shopping cart
  # /!\ Make sure it does not crash with carts having items not in store!
  total = 0
  cart.each do |cart_item|
    total += store_items[cart_item] if store_items[cart_item]
  end
  return total
end
