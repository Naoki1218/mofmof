class Appartment < ApplicationRecord
  validates :name, :rent, :address, :year_built, presence: true
  validates :year_built, :rent, numericality: true
  has_many :staitions
  accepts_nested_attributes_for :staitions
end
