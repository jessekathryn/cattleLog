class Expense < ApplicationRecord
    has_many :cows, through: :user
    has_many :fields, through: :user
end
