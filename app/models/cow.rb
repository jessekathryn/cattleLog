class Cow < ApplicationRecord
    has_many :user
    has_many :reports, through: :user
          
end
