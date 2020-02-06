class Expense < ApplicationRecord
  belongs_to :user

  def user_id
    self.try(:user).try(:id)
  end
end
