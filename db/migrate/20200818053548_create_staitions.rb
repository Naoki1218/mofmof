class CreateStaitions < ActiveRecord::Migration[5.2]
  def change
    create_table :staitions do |t|
      t.string :staition_name
      t.string :line
      t.string :on_foot

      t.timestamps
    end
  end
end
