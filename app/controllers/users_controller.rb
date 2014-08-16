class UsersController < ApplicationController
  skip_before_filter :require_login, only: [:index, :new, :create]
  def index
    @users = User.all
  end

  def new
  	@user = User.new
  end

  def create
  	@user = User.new(user_params)
  	if @user.save
  		redirect_to(:users, notice: 'User was successfully created')
  	else
  		render 'new'
  	end
  end

  def show
    @user = User.find_by_id(params[:id])
    if @user
      render 'show'
    else 
      flash[:notice] = 'User does not exist'
      redirect_to users_path
    end
  end

  private

  def user_params
  	params.require(:user).permit(:email, :password, :password_confirmation)
  end

end
