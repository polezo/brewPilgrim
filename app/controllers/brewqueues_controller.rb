class BrewqueuesController < ApplicationController

    def create
        if cookies[:last_visited_home]
            params[:brewqueue].each do |bq|
                new_bq = Brewqueue.new(brewery_id:bq,user:current_user)
                new_bq.save
            end
        else
            brewq = Brewqueue.new(brewqueue_params)
            brewq.save
        end
        redirect_to profile_path(current_user)
    end

    def destroy
        brewqu = Brewqueue.find(params[:id])
        brewery = brewqu.brewery
        brewqu.destroy
        redirect_to brewery_path(brewery)
    end

    private

    def brewqueue_params
        params.require(:brewqueue).permit(:user_id,:brewery_id)
    end

end
