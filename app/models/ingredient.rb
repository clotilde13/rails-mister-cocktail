class Ingredient < ApplicationRecord
  has_many :doses

  validates :name, presence: true, uniqueness: true
  validates :image, presence: true, uniqueness: true
end
