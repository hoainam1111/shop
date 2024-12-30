class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  # caapj nhataj controller de cho them cac truong bo sung la name va phone
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [ :name, :phone ])
    devise_parameter_sanitizer.permit(:account_update, keys: [ :name, :phone ])
  end
end