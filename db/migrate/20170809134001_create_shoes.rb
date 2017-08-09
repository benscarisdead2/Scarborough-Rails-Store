class CreateShoes < ActiveRecord::Migration[5.1]
  def change
    create_table :shoes do |t|
      t.string :name
      t.string :color
      t.references :store, foreign_key: true

      t.timestamps
    end
  end
end
