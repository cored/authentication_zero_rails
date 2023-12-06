class PasswordComplexityValidator
	def initialize(user)
		@user = user
	end

	def validate
		return unless @user.password.present?

		unless @user.password.match?(/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]/)
			@user.errors.add(:password, 'must include at least one lowercase letter, one uppercase letter, one digit, and one special character')
		end
	end
end
