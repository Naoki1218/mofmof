class Staition < ApplicationRecord
  # validates :line, :staition_name, :on_foot, : true
  belongs_to :appartment
end
