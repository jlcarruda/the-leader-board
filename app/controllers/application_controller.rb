class ApplicationController < ActionController::Base
	before_action :configure_permitted_parameters, if: :devise_controller?

	def index
	end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :password])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:email, :password])
  end

	private

	def object
		@object = params[:id].present? ? config_model.find(params[:id]) : config_model.new(object_params)
	end

	def collection
	end

	def config_model
		User
	end

	def object_params
		params
	end
end
