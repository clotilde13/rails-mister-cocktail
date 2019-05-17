class Dose < ApplicationRecord
  belongs_to :ingredient
  belongs_to :cocktail

  validates :description, :cocktail, :ingredient_id, presence: true
  validates_uniqueness_of :cocktail, scope: [:ingredient_id]
end


# {
#   cocktail: {
#     name: "totqdqdfo",
#     doses_attributes: [
#       {
#         description: '2cl',
#         ingredient_id: 5
#       },
#       {
#         description: '4cl',
#         ingredient_id: 22
#       }
#     ]
#   }
# }


