class Staition < ApplicationRecord
  validates :line, :on_foot, numericality: true
  belongs_to :appartment
end
