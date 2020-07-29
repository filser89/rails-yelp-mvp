class Review < ApplicationRecord
  RATING = (0..5).to_a
  validates :rating, numericality: { only_integer: true, less_than_or_equal_to: 5, greater_than_or_equal_to: 0 }, presence: true
  validates :content, presence: true


  belongs_to :restaurant
end
