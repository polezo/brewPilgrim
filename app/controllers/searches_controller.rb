class SearchesController < ApplicationController

    def home
        if  params[:search]
            @search_style = true
            search_city = params[:search].titleize
            @breweries = Brewery.where(city: search_city)
            if @breweries.length.zero?
                render :home
            end
        end
    end
end
