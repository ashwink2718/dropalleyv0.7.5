class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :name
      t.string :street
      t.string :door
      t.string :city
      t.string :zipcode
      t.string :phone
      t.string :order_icon
      t.string :order_msg
      t.decimal :sub_total, precision: 15, scale: 2

      t.timestamps
    end
  end
end
