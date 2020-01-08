class Cow < ApplicationRecord
    belongs to user
    belongs to field
    belongs to expenses
    has many users through cow
    has many fields through cow
end
