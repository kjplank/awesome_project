class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :user_name
    devise_parameter_sanitizer.for(:account_update) << :user_name
  end

  # helper :all
  # helper_method :embed

  before_action :authenticate_user!

  before_action :check_settings
  def check_settings
    if Setting.count == 0
      i = Setting.new
      i.show_votes = "false"
      i.show_all_ideas = "false"
      i.theme_1 = "Category 1"
      i.theme_2 = "Category 2"
      i.theme_3 = "Category 3"
      i.save
    end
  end


end

