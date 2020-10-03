class Cocktail < ApplicationRecord
  has_many :doses, :ingredients
  validates :name, uniqueness: true, presence: true
  validates :doses, presence: true
end
