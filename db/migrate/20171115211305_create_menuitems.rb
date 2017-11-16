class CreateMenuitems < ActiveRecord::Migration[5.1]
  def change
    create_table :menuitems do |t|
      t.integer :menuitemID
      t.string :name
      t.integer :price
      t.text :description

      t.timestamps
    end
  end
end
