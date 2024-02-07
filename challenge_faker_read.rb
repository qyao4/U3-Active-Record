require_relative 'ar.rb'

# Find all the categories in the database
categories = Category.all

# Display each category name and its associated products
categories.each do |category|
  puts "Category: #{category.name}"
  category.products.each do |product|
    puts "  Product Name: #{product.name} - Price: $#{'%.2f' % product.price}"
  end
  puts "\n" # Add a newline for better readability
end
