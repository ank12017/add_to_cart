class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.float :price
	  t.string :item
	  t.float :price
	  t.string :discription
	  t.integer :order_id
	  t.integer :quantity
	  t.integer :cart_id
	  t.integer :brand_id
      t.boolean :active
      t.timestamps
    end
  end
end
