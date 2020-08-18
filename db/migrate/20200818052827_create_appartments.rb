class CreateAppartments < ActiveRecord::Migration[5.2]
  def change
    create_table :appartments do |t|
      t.string :name
      t.string :rent
      t.string :address
      t.string :year_built
      t.text :optional

      t.timestamps
    end
  end
end
