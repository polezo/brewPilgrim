class SessionsController < ApplicationController
    def new
        @user = User.new
    end

    def create
        user = User.find_by(username: params[:user][:username])
        user = user.try(:authenticate, params[:user][:password])

        return redirect_to(controller: 'sessions', action: 'new') unless user

        session[:user_id] = user.id

        @user = user
        if cookies[:last_visited]
            redirect_to brewery_path(cookies[:last_visited])
        else
        redirect_to profile_path(@user)
        end
    end

    def destroy 
        session.delete :user_id 

        redirect_to controller: 'sessions', action: 'new'
    end

    
end
