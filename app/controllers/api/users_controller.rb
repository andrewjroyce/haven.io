class Api::UsersController < Api::APIController
  before_action :authorize_admin

  def breakdown
    case params[:q]
    when 'profession'
      @users = User.all.where(admin:false).group(:profession).count
      render json: @users
    when 'immigrant'
      @users = User.all.where(admin:false).group(:immigrant).count
      render json: @users
    when 'gender'
      @users = User.all.where(admin:false).group(:gender).count
      render json: @users
    when 'ms'
      @users = User.all.where(admin:false).group(:marital_status).count
      render json: @users
    else
      @users = {}
      @users['error'] = 'Unrecognized parameter given, please specify a correct parameter'
      render json: @users
    end
  end

  def age
      @users = {}
    case params[:q]
    when 'veteran'
      @users['0-19'] = User.where("admin = false AND age < 20 AND veteran = true").count
      @users['20-29'] = User.where("admin = false AND age >= 20 AND age < 30 AND veteran = true").count
      @users['30-39'] = User.where("admin = false AND age >= 30 AND age < 40 AND veteran = true").count
      @users['40-49'] = User.where("admin = false AND age >= 40 AND age < 50 AND veteran = true").count
      @users['50-59'] = User.where("admin = false AND age >= 50 AND age < 60 AND veteran = true").count
      @users['60+'] = User.where("admin = false AND age >= 60 AND veteran = true").count
      render json: @users
    when 'hiv'
      @users['0-19'] = User.where("admin = false AND age < 20 AND hiv = true").count
      @users['20-29'] = User.where("admin = false AND age >= 20 AND age < 30 AND hiv = true").count
      @users['30-39'] = User.where("admin = false AND age >= 30 AND age < 40 AND hiv = true").count
      @users['40-49'] = User.where("admin = false AND age >= 40 AND age < 50 AND hiv = true").count
      @users['50-59'] = User.where("admin = false AND age >= 50 AND age < 60 AND hiv = true").count
      @users['60+'] = User.where("admin = false AND age >= 60 AND hiv = true").count
      render json: @users
    when 'male'
      @users['0-19'] = User.where("admin = false AND age < 20 AND gender = 'male'").count
      @users['20-29'] = User.where("admin = false AND age >= 20 AND age < 30 AND gender = 'male'").count
      @users['30-39'] = User.where("admin = false AND age >= 30 AND age < 40 AND gender = 'male'").count
      @users['40-49'] = User.where("admin = false AND age >= 40 AND age < 50 AND gender = 'male'").count
      @users['50-59'] = User.where("admin = false AND age >= 50 AND age < 60 AND gender = 'male'").count
      @users['60+'] = User.where("admin = false AND age >= 60 AND gender = 'male'").count
      render json: @users
      when 'female'
      @users['0-19'] = User.where("admin = false AND age < 20 AND gender = 'female'").count
      @users['20-29'] = User.where("admin = false AND age >= 20 AND age < 30 AND gender = 'female'").count
      @users['30-39'] = User.where("admin = false AND age >= 30 AND age < 40 AND gender = 'female'").count
      @users['40-49'] = User.where("admin = false AND age >= 40 AND age < 50 AND gender = 'female'").count
      @users['50-59'] = User.where("admin = false AND age >= 50 AND age < 60 AND gender = 'female'").count
      @users['60+'] = User.where("admin = false AND age >= 60 AND gender = 'female'").count
      render json: @users
    else
      @users['0-19'] = User.where("admin = false AND age < 20").count
      @users['20-29'] = User.where("admin = false AND age >= 20 AND age < 30").count
      @users['30-39'] = User.where("admin = false AND age >= 30 AND age < 40").count
      @users['40-49'] = User.where("admin = false AND age >= 40 AND age < 50").count
      @users['50-59'] = User.where("admin = false AND age >= 50 AND age < 60").count
      @users['60+'] = User.where("admin = false AND age >= 60").count
      render json: @users
    end
  end

  def name
    @users = User.select("id, name, gender, picture").where("admin = false").order(:id).limit(8)
    render json: @users
  end

  def profile
    user = User.find(params[:id]) 
    @headshot =User.select("id, name, gender, marital_status, profession, immigrant, age").where("id = ? AND admin = false", params[:id]).order(:age)
    render json: @headshot
  end


  def count
    @count = User.where("admin = false").count
    render json: @count
  end
  
end