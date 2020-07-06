class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.string :type
      t.text :decription
      t.integer :availiable
      t.integer :price

      t.timestamps
    end
  end
end
