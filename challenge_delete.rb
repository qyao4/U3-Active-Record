require_relative 'ar.rb'

product_name = "MyProduct1"
product_to_delete = Product.find_by(name: product_name)

# If the product exists, delete it
if product_to_delete
  product_to_delete.destroy
  puts "Product #{product_name} has been deleted."
else
  puts "Product not found."
end
