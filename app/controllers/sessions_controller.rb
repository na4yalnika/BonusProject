class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by_email(params[:session][:email])
    if @user && @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id
      flash[:notice] = "Successfully logged in"
      redirect_to '/dashboard'
    else
      flash[:alert] = "Invalid email or password"
      redirect_to '/home'
    end 
  end

  def destroy 
    session[:user_id] = nil 
    redirect_to '/' 
  end

end
