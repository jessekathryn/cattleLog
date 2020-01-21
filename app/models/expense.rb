class Expense < ApplicationRecord
    belongs_to :user
    belongs_to :cow
    belongs_to :field
    belongs_to :tools

    has_many :reports, through: :user
end
