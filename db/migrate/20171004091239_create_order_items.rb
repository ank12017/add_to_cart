class CreateOrderItems < ActiveRecord::Migration[5.1]
  def change
    create_table :order_items do |t|
      t.references :product
      t.references :order
      t.float :unit_price
      t.integer :quantity
      t.float :total_price
      t.timestamps
    end
  end
end
