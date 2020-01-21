class Cow < ApplicationRecord
    belongs_to :user

    has_many :fields, through: :cow
    has_many :reports, through: :user
          
 
end
