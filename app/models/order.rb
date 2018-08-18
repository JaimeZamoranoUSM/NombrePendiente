class Order < ApplicationRecord
  validates :cantidad, presence: true
  validates :unidad, presence: true
  validates :tituto, presence: true
  validates :proveedor, presence: true
end
