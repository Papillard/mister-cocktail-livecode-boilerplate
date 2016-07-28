class Ingredient < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
end
