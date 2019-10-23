class BrewqueuesController < ApplicationController

    def create
        brewq = Brewqueue.new(brewqueue_params)
        brewq.save
        redirect_to brewery_path(brewq.brewery)
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
