class UsersController < ApplicationController
   #Get all
    def index
        render json: User.all
    end
    #Get by one
    def show 
        user = User.find(params[:id])
        reviews = Review.where(user_id:user.id)

        if user
            render json:{user: user, reviews:reviews}
            else
            render json: {error: "user not found"}, status: :not_found
        end
    end
end
