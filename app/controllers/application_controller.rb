class ApplicationController < ActionController::Base
  # before_action :load_and_authorize_resource, unless: :devise_controller?

  # rescue_from CanCan::AccessDenied do |exception|
  #   redirect_to root_path, alert: exception.message
  # end

  # private

  # def load_and_authorize_resource
  #   # Load the current user's abilities
  #   @current_ability ||= Ability.new(current_user)
  #   # Check if the user is authorized to perform the current action
  #   authorize! params[:action].to_sym, params[:controller].singularize.to_sym
  # end
  # before_action :authenticate_user!
end
