class UsersController < ApplicationController
     def index
     end

     def show
     end
     
     def new
     end

     def create
        
     end

     private 
     def user_params
        params.require(:user).permit(:username, :password :email, :city, :state, :bio, :password_digest) 
     end

end
