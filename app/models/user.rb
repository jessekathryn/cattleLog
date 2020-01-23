class User < ApplicationRecord
    has_secure_password

    has_many :cows
    has_many :fields
    has_many :tools
    has_many :expenses
    has_many :reports

    validates :email, uniqueness: true
    validates :username, uniqueness: true
    validates :username, length: { minimum: 2, message: "Must be 2 characters long." }
    validates :password, length: { in: 6..20, message: "Must be 6-20 characters long."  }

end
