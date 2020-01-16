class Field < ApplicationRecord
   belongs_to :user

   has_many :cows, through: :user
   has_many :expenses, through: :user
end
