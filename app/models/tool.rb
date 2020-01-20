class Tool < ApplicationRecord
    
    has_many :cow
    has_many :field
    belongs_to :user

end

