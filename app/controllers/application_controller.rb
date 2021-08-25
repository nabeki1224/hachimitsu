class ApplicationController < ActionController::Base
	before_action :auth_params, if: :devise_controller?

	def after_sign_in_path_for(resource)
		user_path(current_user)
	end

	def after_sign_out_path_for(resource)
		root_path
	end



	protected

	def auth_params
		devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
		devise_parameter_sanitizer.permit(:account_update, keys: [:name, :icon])
	end


end
