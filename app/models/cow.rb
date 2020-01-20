class Cow < ApplicationRecord
    has_many :expenses
    has_many :fields, through: :cow
    belongs_to :user
        
 
end
