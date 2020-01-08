class Field < ApplicationRecord
    belongs to expenses
    belongs to user
    has many cows
end
