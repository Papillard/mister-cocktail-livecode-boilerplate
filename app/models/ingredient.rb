class Ingredient < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  has_many :doses, dependent: :destroy
  has_many :cocktails, through: :doses
end
