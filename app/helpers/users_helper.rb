module UsersHelper
	def display_errors(errors)
		return if errors.blank?

		content_tag(:div, class: 'error-messages') do
			content_tag(:ul) do
				errors.full_messages.each do |error|
					concat(content_tag(:li, error))
				end
			end
		end
	end
end
