class UserSessionsController < ApplicationController
  def new
  	@user = User.new
  end

  def create
  	if @user = login(params[:email], params[:password])
  		redirect_back_or_to(:users, notice: 'Login Successful')
  	else
  		flash.now[:alert] = 'Login Failed'
  		render action: 'new'
  	end
  end

  def destroy
  	logout
  	redirect_to(:users, notice: 'Logged Out')
  end
end
