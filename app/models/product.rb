class Product < ApplicationRecord
	mount_uploader :main_img, ImageUploader
	mount_uploader :img1, ImageUploader
	mount_uploader :img2, ImageUploader
	mount_uploader :img3, ImageUploader
	mount_uploader :img4, ImageUploader
	mount_uploader :img5, ImageUploader

	def self.cat_select(category)
		where("category = ?", category)
	end

	scope :cf, -> { where(brand: "Compania Fantastica") }


end