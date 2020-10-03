class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  validates :description, presence: true
  # valider le cocktail si l'ingredient est unique
  validates :cocktail, uniqueness: { scope: :ingredient }
end
