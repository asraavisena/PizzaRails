class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.integer :orderID
      t.integer :customerID
      t.integer :orderID
      t.integer :total
      t.time :delivered

      t.timestamps
    end
  end
end
