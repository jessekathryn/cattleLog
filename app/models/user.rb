class User < ApplicationRecord
    has_secure_password
    has_many :cows
    has_many :fields, through: :cows
    has_many :expenses
    has_many :tools
    has_many :pages
    has_many :reports, :as => :reportable

    accepts_nested_attributes_for :cows
    accepts_nested_attributes_for :fields
    accepts_nested_attributes_for :expenses
    accepts_nested_attributes_for :tools
    accepts_nested_attributes_for :reports

    validates :email, uniqueness: true
    validates :username, length: { minimum: 2, message: "Must be 2 characters long." }
    validates :password, length: { in: 6..20, message: "Must be 6-20 characters long." }

    def self.find_or_create_by_omniauth(auth_hash)
        self.where(:email => auth_hash["info"]["email"], :username => auth_hash["info"]["nickname"]).first_or_create do |user|
            user.password = SecureRandom.hex
        end
    end
end
