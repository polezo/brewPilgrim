class BreweriesController < ApplicationController
    def show
       @brewery = Brewery.find(params[:id])
       if current_user
        if current_user.reviewees.include?(@brewery)
            @user_review = Review.find_by(reviewer: current_user, reviewee: @brewery)
        else
            @review = Review.new
        end
       end
    end
end
