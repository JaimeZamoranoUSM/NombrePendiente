class Material < ApplicationRecord
  validates :nombre, presence: true
  validates :cantidad, presence: true
  validates :unidad, presence: true
end
