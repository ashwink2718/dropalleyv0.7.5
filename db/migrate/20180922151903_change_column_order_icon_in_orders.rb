class ChangeColumnOrderIconInOrders < ActiveRecord::Migration[5.2]
  def change
  	change_column :orders , :order_icon, :string, default: "envelope-open"
  end
end
