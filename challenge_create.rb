require_relative 'ar.rb'

# 1. Using new method followed by save
product1 = Product.new(name: "MyProduct1", description: "Description1", price: 10, stock_quantity: 5)
product1.save  # Save the product to the database

# 2. Using create method
product2 = Product.create(name: "MyProduct2", description: "Description2", price: 15, stock_quantity: 10)
# This method creates and saves the object in one step

# 3. Using new method with attribute assignment, then save
product3 = Product.new  # Create a new Product instance
product3.name = "MyProduct3"
product3.description = "Description3"
product3.price = 20
product3.stock_quantity = 8
product3.save  # Save the product to the database

# 4. Creating a product object missing some required columns
incomplete_product = Product.new(name: "Incomplete Product")  # Description, price, and stock_quantity are missing
if incomplete_product.save
  puts "Product saved successfully."
else
  puts "Failed to save product. Errors:"
  incomplete_product.errors.full_messages.each { |message| puts message }  # Print all validation errors
end
