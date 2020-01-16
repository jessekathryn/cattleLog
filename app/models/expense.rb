class Expense < ApplicationRecord
    has_many :cows
    has_many :fields
    
    belongs_to :user
end
