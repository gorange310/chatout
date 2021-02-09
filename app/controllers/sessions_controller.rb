class SessionsController < ApplicationController
  before_action :logged_in_redirect, only: [:new, :create]

  def new
  end

  def create
    user = User.find_by(username: params[:session][:username])
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      flash.now[:success] = "Log in successfully"
      redirect_to root_path
    else
      flash.now[:error] = "Something wrong"
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:success] = "Log out successfully"
    redirect_to root_path
  end

  private

  def logged_in_redirect
    if logged_in?
      flash[:error] = "Already logged in"
      redirect_to root_path
    end
  end
end
