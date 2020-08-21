class AddAppartmentRefToStaitions < ActiveRecord::Migration[5.2]
  def change
    add_reference :staitions, :appartment, foreign_key: true
  end
end
