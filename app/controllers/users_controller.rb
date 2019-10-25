class UsersController < ApplicationController
      before_action :require_logged_in, except: [:index, :new, :create]

     def index
     end

     def show #will be for user even without session

      @reviewer = User.find(params[:id])
     end

     def new
      @user = User.new
     end

     def profile #will show the profile details 
     end

     def edit #show edit form and get the new values
      @user = User.find(current_user.id)
     end

     def update
      @user = User.find(params[:id])
      @user.update(user_params)
      redirect_to profile_path
     end

     def create
         @user = User.create(user_params)  

         if @user.valid?
            @user.save
            session[:user_id] = @user.id 
            redirect_to controller: 'searches', action: 'home', 
               notice: "#{@user.username} created successfully"
         else
            redirect_to controller: 'users', action: 'new'
         end
     end

     private 
     def user_params
        params.require(:user).permit(:username, :password, :password_confirmation, :email, :city, :state, :bio) 
     end

end
