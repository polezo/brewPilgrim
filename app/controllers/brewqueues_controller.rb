class BrewqueuesController < ApplicationController

    def create
        brewq = Brewqueue.new(review_params)
        brewq.save
        redirect_to brewery_path(brewq.brewery)
    end

    private

    def review_params
        params.require(:brewqueue).permit(:user_id,:brewery_id)
    end

end
