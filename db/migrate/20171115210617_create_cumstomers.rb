class CreateCumstomers < ActiveRecord::Migration[5.1]
  def change
    create_table :cumstomers do |t|
      t.integer :customerID
      t.string :name
      t.string :surename

      t.timestamps
    end
  end
end
