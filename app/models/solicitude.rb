class Solicitude < ApplicationRecord
  validates :titulo, presence: true
  validates :texto, presence: true
end
