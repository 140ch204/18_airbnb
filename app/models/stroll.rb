class Stroll < ApplicationRecord
  has_many :dogs, through: :dog_inscriptions
  has_many :dog_sitters, through: :dog_sitter_inscriptions
end
