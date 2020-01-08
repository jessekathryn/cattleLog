class Cow < ApplicationRecord
    belongs to user
    belongs to field
    belongs to expenses
end
