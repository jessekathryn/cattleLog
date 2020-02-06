class Field < ApplicationRecord
   belongs_to :user
   has_many :tools, through: :user

   def user_id
      self.try(:user).try(:id)
   end
end
