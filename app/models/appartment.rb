class Appartment < ApplicationRecord
  validates :name, :rent, :address, :year_built, presence: true
end
