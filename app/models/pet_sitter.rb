class PetSitter < ApplicationRecord
    has_many :reviews
    has_many :users, through: :reviews

    def avg_score
        reviews.average(:score).round(2).to_f
    end
end
