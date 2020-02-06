class Cow < ApplicationRecord
  has_many :fields
  belongs_to :user

  def user_id
    self.try(:user).try(:id)
  end
end
