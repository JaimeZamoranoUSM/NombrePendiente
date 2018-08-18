class NotMaterial < ApplicationRecord
    validates :cantidad, presence: true
    validates :unidad, presence: true
end
