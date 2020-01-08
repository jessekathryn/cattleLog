class User < ApplicationRecord
    has_many :cows
    has_many :fields, through: :cow
    has_many :expenses

end
