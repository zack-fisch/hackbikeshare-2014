class UsersController < ApplicationController
  skip_before_filter :require_login, only: [:index, :new, :create, :show]
  def index
    @users = User.all.sort_by {|user| user.badges.count}.reverse
  end

  def new
  	@user = User.new
  end

  def create
  	@user = User.new(user_params)
  	if @user.save 
     auto_login(@user)
     redirect_to(@user, notice: 'User Created & Login Successful')
  	else
  		render 'new'
  	end
  end

  def show
    @user = User.find_by_id(params[:id])
    @riddles = @user.badges.pluck(:riddle_id)
    @badges = []
    @riddles.each do |riddle|
      @badges << Riddle.find(riddle).badge
    end
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
