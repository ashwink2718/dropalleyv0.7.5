class ChangeColumnOrderMsgInOrders < ActiveRecord::Migration[5.2]
  def change
  	change_column :orders , :order_msg, :string, default: "Order Received"
  end
end
