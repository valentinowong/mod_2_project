class UsersController < ApplicationController
    skip_before_action :require_logged_in, only: [:new, :create]
    
    def new
      @user = User.new
    end
  
    def create
      @user = User.create(user_params)
      if params[:user][:password] == params[:user][:password_confirmation]
        session[:user_id] = @user.id
        redirect_to root_path
      else
        redirect_to users_new_path
      end
    end
  
    private
  
    def user_params
      params.require(:user).permit(:name, :password, :password_confirmation)
    end
  end