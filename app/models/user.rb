class User < ApplicationRecord
    has_many :reviews
    has_many :pet_sitters, through: :reviews
end
