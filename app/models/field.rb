class Field < ApplicationRecord
   belongs_to :user
   has_many :cows
   has_many :expenses
end
