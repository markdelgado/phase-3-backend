class PetSittersController < ApplicationController
    # GET all
    def index
        render json: PetSitter.all
    end
    #Get by one
    def show 
        petsitter =PetSitter.find(params[:id])
        # petsitter.to_json(include: :reviews)
        reviews = Review.where(pet_sitter_id: petsitter.id)
        if petsitter
            render json: {pet_sitter: petsitter, reviews: reviews}
        else
            render json: {error: "petsitter not found"}, status: :not_found
        end
    end
    

        
end
