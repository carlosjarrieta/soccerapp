class ApplicationController < ActionController::Base
	#protect_from_forgery with: :exception
	skip_before_action :verify_authenticity_token

	def after_sign_out_path_for(resource_or_scope)
		if resource_or_scope == :user
			root_path
		elsif resource_or_scope == :admin
			new_admin_session_path
		else
			root_path
		end
	end
end
