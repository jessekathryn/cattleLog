class Expense < ApplicationRecord
    belongs_to :user
    belongs_to :cow

    has_many :fields, through: :cow
end
