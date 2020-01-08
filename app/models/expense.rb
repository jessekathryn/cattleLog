class Expense < ApplicationRecord
    belongs_to :user
    has_many :cows
    has_many :fields 
end
