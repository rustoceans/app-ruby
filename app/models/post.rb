class Post < ActiveRecord::Base
	has_many :post_attachments
	belongs_to :user
   	accepts_nested_attributes_for :post_attachments
   	validates_presence_of :title
end
