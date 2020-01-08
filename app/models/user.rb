class User < ApplicationRecord
    has_many :cows
    has_many :fields
    has_many :expenses

end
