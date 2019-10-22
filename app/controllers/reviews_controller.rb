class ReviewsController < ApplicationController

    def create
        review = Review.new(review_params)
        review.save
        redirect_to brewery_path(review.reviewee)
    end

    private

    def review_params
        params.require(:review).permit(:content,:rating,:reviewer_id,:reviewee_id)
    end

end
