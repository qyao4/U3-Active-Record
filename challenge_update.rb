require_relative 'ar.rb'

# Find all products with a stock quantity greater than 40
products = Product.where("stock_quantity > ?", 40)

# Add one to the stock quantity of each of these products
products.each do |product|
  product.stock_quantity += 1
  product.save  # Save the changes to the database
end
