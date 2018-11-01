class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.string :code
      t.string :name

      t.timestamps
    end
    add_index :locations, :code, unique: true
    add_index :locations, :name, unique: true
  end
end
