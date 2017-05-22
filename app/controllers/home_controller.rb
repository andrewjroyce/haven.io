class HomeController < ApplicationController

  def index

  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user

  def edit
    @user = User.find(params[:id])
  end
end
