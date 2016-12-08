class Kisting < ActiveRecord::Base
	if Rails.env.production?
		           has_attached_file :image,:styles => { :medium => "350x500", :thumb => "100x100>" }, :default_url => "img.jpg",
											:storage => :dropbox,
											:dropbox_credentials => Rails.root.join("config/dropbox.yml"),
											:path => ":style/:id_:filename"
		validates_attachment_content_type :image, :content_type => %w(image/jpeg image/jpg image/png)
	else
		           has_attached_file :image,:styles => { :medium => "350x500", :thumb => "100x100>" }, :default_url => "img.jpg"
		validates_attachment_content_type :image, :content_type => %w(image/jpeg image/jpg image/png)
	end
   validates :name, :description, :rentprice, :sellprice, presence: true
   validates :sellprice, numericality: {greater_than_or_equal_to: 0 }
   validates :rentprice, numericality: {greater_than_or_equal_to: 0 }
   validates_attachment_presence :image
end
