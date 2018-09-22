class CreateCustomOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :custom_orders do |t|
    	t.string :name
      t.string :email
      t.string :street
      t.string :door
      t.string :city
      t.string :zipcode
      t.string :phone
      t.string :order_icon, default: "envelope-open"
      t.string :order_msg, default: "Order Received"
      t.string :product1
	    t.string :size1
	    t.string :product2
	    t.string :size2
	    t.string :product3
	    t.string :size3
	    t.string :product4
	    t.string :size4
	    t.string :product5
	    t.string :size5
	    t.string :comment

      t.timestamps
    end
  end
end
