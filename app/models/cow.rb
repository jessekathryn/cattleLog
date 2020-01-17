class Cow < ApplicationRecord
    has_many :expenses
    has_many :fields
    belongs_to :user
 
end
