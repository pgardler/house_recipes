class ApplicationController < ActionController::Base

    def current_user
        @current_user ||= session[:user_id] ? User.find(session[:user_id]) : nil
    end

    def authorize
        if !current_user.present?
            redirect_to sign_in_path
        end
    end
end
