class SignupMailer < ActionMailer::Base
	default from: 'alex.falcucci@gmail.com'

	def confirm_email(user)
		@user = user
		@confirmation_link = root_url

		mail({
			to: user.email,
			bcc: ['sign ups <alex.falcucci@hotmail.com>'],
			subject: 'signup.confirm_email.subject'
		})
	end
end