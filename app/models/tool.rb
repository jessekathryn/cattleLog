class Tool < ApplicationRecord
    belongs_to :user
    has_many :reports, through: :user
end

