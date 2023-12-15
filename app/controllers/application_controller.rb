class ApplicationController < ActionController::Base
  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
  helper_method :current_user

  def record_not_found
    render file: "#{Rails.root}/public/404.html", layout:false, status: :not_found
  end
  private

  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]

  end


end
