class Cow < ApplicationRecord
   belongs_to :user

   def user_id
      self.try(:user).try(:id)
    end
  
    def user_id=(id)
      user = user.find_or_create_by(user_id: id)
      self.user = user
    end
end
