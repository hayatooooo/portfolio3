class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  #sign_up,sign_in時の許可
  def configure_permitted_parameters
  devise_parameter_sanitizer.permit(:sign_up, keys: [:name,:email])
  devise_parameter_sanitizer.permit(:sign_in, keys: [:name])
end
end
