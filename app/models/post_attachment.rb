class PostAttachment < ActiveRecord::Base
	mount_uploader :picture, PictureUploader
   	belongs_to :post
   	belongs_to :user
   	validates_presence_of :picture
end
