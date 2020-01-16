class Cow < ApplicationRecord
    belongs_to :user
    has_many :expenses
    has_many :fields
end
