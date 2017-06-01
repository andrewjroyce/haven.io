class Api::ProfilesController < Api::UsersController
  before_action :authorize_admin

  def profile
    user = User.find(params[:id])
    @headshot =User.select("name, gender, marital_status, profession, immigrant, age").where("admin = false").order(:id)
    render json: @headshot
  end
 helper_method :headshot

  def find
    user = User.find(params[:id])
    if params[:user_id] && @user = User.find_by_id(params[:user_id])
    profile = user.profiles
    render json: profile
  end
end
