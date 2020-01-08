class Expense < ApplicationRecord
    belongs to user
    has many cows
    has many fields 
end
