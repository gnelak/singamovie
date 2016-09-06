class Movie < ActiveRecord::Base
	searchkick
	belongs_to :user
	mount_uploader :image, ImageUploader
	has_many :reviews
	validates :title, :description, :movie_length, :director, :rating, :image, :presence => true
end
