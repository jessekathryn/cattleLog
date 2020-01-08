class Field < ApplicationRecord
    belongs_to :expenses
    belongs_to :user
    has_many :cows
end
