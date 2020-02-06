class Tool < ApplicationRecord
    belongs_to :user
    has_many :fields

    def user_id
        self.try(:user).try(:id)
    end
end

