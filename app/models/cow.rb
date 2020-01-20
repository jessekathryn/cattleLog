class Cow < ApplicationRecord
    has_many :expenses
    has_many :fields, through: :cow
    has_many :reports, through: :user
    belongs_to :user
        
 
end
