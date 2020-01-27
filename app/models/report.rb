class Report < ApplicationRecord
    belongs_to :user

  scope :created, -> { where(created: true) }
  scope :created_before, ->(time) { where("created_at < ?", time) }

  def self.created_before(time)
   where("created_at < ?", time)
  end

end
