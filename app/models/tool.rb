class Tool < ApplicationRecord
    belongs_to :user
    belongs_to :field
    has_many expenses

    def user_id
        self.try(:user).try(:id)
    end

end

