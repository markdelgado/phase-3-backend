class Review < ApplicationRecord
    belongs_to :pet_sitter
    belongs_to :user
end
