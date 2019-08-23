class UsersController < ApplicationController
    skip_before_action :require_logged_in, only: [:new, :create]
    
    def new
      @user = User.new
    end
  
    def create
      @user = User.create(user_params)
      if @user.valid?
        session[:user_id] = @user.id
        redirect_to root_path
      else
        flash[:errors] = @user.errors.full_messages
        redirect_to new_user_path
      end
    end

    def show
      @user = User.find(params[:id])
    end
  
    private
  
    def user_params
      params.require(:user).permit(:name, :password, :password_confirmation)
    end
  end