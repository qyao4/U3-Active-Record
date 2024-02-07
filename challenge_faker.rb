require_relative 'ar.rb'
require 'faker' # Require the faker gem

# Generate 10 new categories
10.times do
  category = Category.create(name: Faker::Commerce.department, description: Faker::Lorem.sentence)

  # For each category, generate 10 new products
  10.times do
    Product.create(
      name: Faker::Commerce.product_name,
      description: Faker::Lorem.sentence,
      price: Faker::Commerce.price,
      stock_quantity: Faker::Number.between(from: 1, to: 100),
      category: category
    )
  end
end
