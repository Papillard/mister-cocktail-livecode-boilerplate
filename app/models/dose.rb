class Dose < ApplicationRecord
  validates :description, :cocktail, :ingredient, presence: true
  validates :ingredient, uniqueness: { scope: :cocktail }
  belongs_to :cocktail
  belongs_to :ingredient
end
