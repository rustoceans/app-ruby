module PostsHelper
	def belongs_to_user(post)
		user_signed_in? && post.user == current_user
	end
end
