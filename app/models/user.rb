class User < ApplicationRecord
    validates :calories, :proteins, :carbohydrates, :fats, :meal_type, presence: true

end