class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user

  def authorize
    redirect_to '/login', alert: 'Not currently logged in' unless current_user
  end

  def authorize_admin
    if current_user
      redirect_to '/', alert: 'Not an authorized admin' unless current_user.admin
    else
      redirect_to '/', alert: 'Not an authorized admin'
    end
  end

def lat_lng
  @lat_lng ||= session[:lat_lng] ||= get_geolocation_data_the_hard_way
end

end
