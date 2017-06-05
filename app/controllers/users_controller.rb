class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    user = User.new(user_sign_up_params)
    if user.save
      session[:user_id] = user.id
      redirect_to '/'
    else
      redirect_to '/signup'
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    uploaded_io = params[:user][:picture]
    @user.update(:picture => uploaded_io.original_filename)
    File.open(Rails.root.join('public', 'uploads', uploaded_io.original_filename), 'wb') do |file|
      file.write(uploaded_io.read)
    end

    if @user.update_attributes(user_update_params)
      redirect_to "/users/#{@user.id}", notice: "Successfully submited"
    else
      redirect_to "/users/#{@user.id}"
    end
  end

  private

  def user_sign_up_params
    params.require(:user).permit(:email, :password, :password_confirmation, :hiv, :veteran, :immigrant, :lgbt, :gender, :age)
  end


  def user_update_params
    params.require(:user).permit(:name, :profession, :marital_status, :hiv, :veteran, :immigrant, :lgbt, :gender, :age)
  end

end
