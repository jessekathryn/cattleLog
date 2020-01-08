class User < ApplicationRecord
    has_secure_password
    
    has_many :cows
    has_many :fields
    has_many :expenses
end
