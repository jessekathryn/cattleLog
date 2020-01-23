class Report < ApplicationRecord
    belongs_to :user

 


   def display_latest_report 
      user.report.last 
   end
end
