class Cow < ApplicationRecord
    belongs to user
    belongs to field
    belongs to expenses
    has many :expenses, through: :field
    has many :fields, through: :user
end
