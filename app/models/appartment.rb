class Appartment < ApplicationRecord
  validates :name, :rent, :address, :year_built, presence: true
  has_many :staitions
  accepts_nested_attributes_for :staitions
end
