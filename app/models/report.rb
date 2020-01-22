class Report < ApplicationRecord
    has_many :cows, through: :user
    has_many :fields, through: :user
    has_many :tools, through: :user
    has_many :expenses, through: :user
end
