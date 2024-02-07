class Product < ActiveRecord::Base
  # This AR object is linked with the products table.

  # A product has a many to one relationship with a category.
  # The products table has a category_id foreign key.
  # In other words, a product belongs to a category.

  # Columns:id/name/description/price/stock_quantity/category_id/created_at/updated_at
  belongs_to :category

  # https://edgeapi.rubyonrails.org/
  # Validates that all specified attributes are not empty.
  validates_presence_of :name, :description, :price, :stock_quantity

  # Validates that the name is unique and has a length of more than 3 characters.
  validates :name, uniqueness: true, length: { minimum: 4 }

end
