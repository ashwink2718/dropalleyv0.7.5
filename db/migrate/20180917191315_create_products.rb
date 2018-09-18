class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
    	t.string :title
    	t.text :description
    	t.string :brand
    	t.string :color
    	t.string :size
    	t.string :main_img
    	t.string :img1
    	t.string :img2
    	t.string :img3
    	t.string :img4
    	t.string :img5
    end
  end
end
