class Cow < ApplicationRecord
    belongs_to :user
    belongs_to :field
    belongs_to :expenses
    has_many :expenses, through: :field
    has_many :fields, through: :user
end
