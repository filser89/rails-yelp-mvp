class Restaurant < ApplicationRecord
  CATEGORY = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :name, presence: true
  validates :category, inclusion: { in: CATEGORY }
  validates :address, presence: true

  has_many :reviews, dependent: :destroy
end
