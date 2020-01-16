class Cow < ApplicationRecord
    belongs_to :user
    belongs_to :field
    has_many :expenses, through: :user
end
