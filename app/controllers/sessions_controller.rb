class SessionsController < ApplicationController
  def new; end

  def create
    @username = params[:name]
    @user = User.where(name: @username).take
    if @user
      session[:user_id] = @user.id
      redirect_to events_path, notice: 'Logged in!'
    else
      flash.now.alert = 'Email or password is invalid'
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to events_path, notice: 'Logged out!'
  end
end
