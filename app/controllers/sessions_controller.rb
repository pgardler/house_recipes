class SessionsController < ApplicationController

    def new 

    end

    def create
        @user = User.find_by(email: params[:email])
        if @user.authenticate(params[:password])
            session[:user_id] = @user.id
            redirect_to home_path
        else
            redirect_to sign_in_path, flash: { error: "Either your email or password was incorrect." }
        end
    end

    def destroy
        session[:user_id] = nil
        redirect_to sign_in_path
    end
end
