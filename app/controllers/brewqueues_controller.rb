class BrewqueuesController < ApplicationController

    def create
        if cookies[:last_visited].include?("search")
            params[:brewqueue].each do |bq|
                new_bq = Brewqueue.new(brewery_id:bq,user:current_user)
                new_bq.save
            end
            redirect_to profile_path(current_user)
        else
            brewq = Brewqueue.new(brewqueue_params)
            brewq.save
            redirect_to brewery_path(brewq.brewery)
        end
        
    end

    def destroy
        if cookies[:last_visited] == "profile"
            brewqu = Brewqueue.find(params[:id])
            brewqu.destroy
            redirect_to profile_path
        else

        brewqu = Brewqueue.find(params[:id])
        brewery = brewqu.brewery
        brewqu.destroy
        redirect_to brewery_path(brewery)
        end
    end

    private

    def brewqueue_params
        params.require(:brewqueue).permit(:user_id,:brewery_id)
    end

end
