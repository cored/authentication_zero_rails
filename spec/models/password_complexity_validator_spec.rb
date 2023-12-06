require 'rails_helper'

RSpec.describe PasswordComplexityValidator do
	subject(:validator) { described_class.new(user) }

	describe '#validate' do
		it 'adds an error if the password does not meet complexity requirements' do
			user = User.new(password: 'weakpassword')

			validator.validate

			expect(user.errors[:password]).to include('must include at least one lowercase letter, one uppercase letter, one digit, and one special character')
		end

		it 'does not add an error if the password meets complexity requirements' do
			user = User.new(password: 'StrongPass1$')

			validator.validate

			expect(user.errors[:password]).to be_empty
		end
	end
end
