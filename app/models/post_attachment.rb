class PostAttachment < ActiveRecord::Base
	mount_uploader :picture, PictureUploader
   	belongs_to :post
   	validates_presence_of :picture
end
