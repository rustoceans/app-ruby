class User < ActiveRecord::Base

	EMAIL_REGEXP = /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/

	validates_presence_of :email, :full_name, :location, :password
	validates_confirmation_of :password
	validates_length_of :bio, minimum: 10, allow_blank: false
	validates_uniqueness_of :email

	has_secure_password

	mount_uploader :picture, PictureUploader

	def self.authenticate(email, password)
		user = User.find_by(email: email).try(:authenticate, password)
	end

end
