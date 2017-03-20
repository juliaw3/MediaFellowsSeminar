class Internship < ApplicationRecord
	geocoded_by :address
	after_validation :geocode

	mount_uploader :image, ImageUploader
	mount_uploader :carouselImage1, ImageUploader
	mount_uploader :carouselImage2, ImageUploader
	mount_uploader :carouselImage3, ImageUploader
end
