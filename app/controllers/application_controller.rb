class ApplicationController < ActionController::Base
    # Prevent CSRF attacks by raising an exception.
    # For APIs, you may want to use :null_session instead.
    protect_from_forgery with: :exception
    helper_method :current_user
    
    before_action :current_user
    before_action :require_logged_in, except: [:welcome, :current_user, :logged_in?]

    def welcome
    end

    def current_user
        @user = (User.find_by(id: session[:user_id]) || User.new)
    end

    def logged_in?
     current_user.id != nil
    end

    def require_logged_in
      return redirect_to login_path unless logged_in?
    end

end
