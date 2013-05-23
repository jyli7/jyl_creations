class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :authenticate

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_path, :alert => exception.message
  end

  def authenticate
    if Rails.env.production?
      authenticate_or_request_with_http_basic do |username, password|
        username == "jyl702" && password == "cacpassfoo7"
      end
    end
  end

  def require_admin!
    raise CanCan::AccessDenied unless current_user && current_user.has_role?(:admin)
  end

end
