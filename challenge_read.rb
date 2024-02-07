require_relative 'ar.rb'

# Use the Product class to find (any) product from the database.
product = Product.first
# Inspect the Product object and get all the columns of products table.
puts product.inspect

number_of_products = Product.count
puts "There are #{number_of_products} in the products table."

# The names of all products above $10 with names that begin with the letter C.
products_above_10 = Product.where('price > ? AND name LIKE ?', 10, 'C%').pluck(:name)
puts "Products above $10 with names starting with C: #{products_above_10.join(', ')}"

# Total number of products with a low stock quantity (defined as less than 5 in stock).
low_stock_products = Product.where('stock_quantity < ?', 5).count
puts "Total number of products with low stock: #{low_stock_products}"

###### categories
# Find the name of the category associated with a product
product = Product.find_by(name: "Chai")
puts "Category of Product '#{product.name}': #{product.category.name}"

# Build and persist a new product associated with a specific category
category = Category.find_by(name: "Beverages")
new_product = category.products.build(name: "BeveragesProduct", description: "Description", price: 20, stock_quantity: 10)
new_product.save
puts "New product created in category '#{category.name}'"


# Find all products of a specific category over a certain price
specific_category = Category.find_by(name: "Confections")
expensive_products = specific_category.products.where("price > ?", 50)  # Assuming '50' is the price threshold
puts "Expensive products in '#{specific_category.name}':"
expensive_products.each { |p| puts p.name }
