class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_current_user if [:user_signed_in]

  def set_current_user
    @current_user = current_user
  end
end
