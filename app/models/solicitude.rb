class Solicitude < ApplicationRecord
  belongs_to :user
  validates :titulo, presence: true
  validates :texto, presence: true
  validates :f_requerida, presence: true
  before_create :set_estado

  private

  def set_estado
    self.estado = "Pendiente"
  end
end
