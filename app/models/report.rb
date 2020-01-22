class Report < ApplicationRecord
    belongs_to :user

   accepts_nested_attributes_for :cow
   accepts_nested_attributes_for :field


   def display_latest_report 
      user.report.last 
   end
end
