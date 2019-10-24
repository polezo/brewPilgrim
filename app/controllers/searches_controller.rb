class SearchesController < ApplicationController

    def home
        if  params[:search]
            @search_style = true
            search_city = params[:search].titleize
            @breweries = Brewery.where(city: search_city)
            cookies[:last_visited] = "?search=#{params[:search]}"
            if @breweries.length.zero?
                render :home
            end
        else 
            cookies[:last_visited] = "home"
        end
    end
end
