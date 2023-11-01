class ApplicationController < ActionController::Base

    helper_method :current_user

private
    def current_user
        if session[:login_uid] #current_user
            User.find_by(uid: session[:login_uid])
        end
    end
end
