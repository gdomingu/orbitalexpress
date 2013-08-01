class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :require_login
  helper_method :admin?
  protected
  def not_authenticated
    redirect_to login_path, :alert => "Please login first."
  end

  def admin?
    false
  end
  def authorize
    @user = current_user
    unless @user.is_admin?
      raise "You must be an administrator to view this page."
    end
  end

end
