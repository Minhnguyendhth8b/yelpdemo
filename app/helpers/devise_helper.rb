module DeviseHelper
	def devise_error_messages!
		return '' if resource.errors.empty?

		message = resource.errors.full_message.map { |msg| content_tag(:li, msg)}.join
		sentence = I18n.t('errors.message.not_saved',count: resource.errors.count, resource: resource.class.model_name.human.downcase)

		html = <<-HTML
		<div class="alert alert-danger alert-dismissable">
			<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
			<h4>#{sentence}</h4>
			#{messages}
		</div>
		HTML

		html.html_safe
	end
end