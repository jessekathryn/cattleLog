class Expense < ApplicationRecord
  belongs_to :tool

  def user_id
    self.try(:user).try(:id)
  end
end
