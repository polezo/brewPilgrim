class UsersController < ApplicationController
      before_action :require_logged_in

     def index
     end

     def show #will be for user even without session

      # @user = User.find(params[:id])
     end

     def profile
         @my_profile = User.find(session[:user_id])
     end

     
     def new
     end

     def create
         @user = User.create(user_params)  

         if @user.save
            session[:user_id] = @user.id 
            redirect_to controller: 'searches', action: 'home'
         else
            redirect_to controller: 'users', action: 'new'
         end
     end

     private 
     def user_params
        params.require(:user).permit(:username, :password, :password_confirmation, :email, :city, :state, :bio) 
     end

end
