class SearchesController < ApplicationController

    def home
        if params[:search_state]
            @search_style = true
            search_state = params[:search_state].titleize
            @breweries = Brewery.where(state: search_state)
            cookies[:last_visited] = "?search_state=#{params[:search_state]}"
        elsif params[:search]
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

    def stats
        @longest_review = Review.longest_review
        @average_review = Review.average_rating.round(2)
        @total_reviews = Review.total
        @total_breweries_on_brewqueue = Brewqueue.total
        @most_reviews = User.most_reviews
        @alcoholic = User.most_brewqueues
        @best_brewery = Brewery.highest_rated
        @most_bq_brewery = Brewery.find(Brewqueue.most_brewqueues)
        @city = Brewery.city_most
        @most_reviews_brewery = Brewery.most_reviews
        @state = Brewery.state_most
        
    end

end
