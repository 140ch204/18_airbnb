class Dog < ApplicationRecord
  belongs_to :city
  has_many :strolls, through: :dog_inscriptions
end
