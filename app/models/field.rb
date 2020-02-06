class Field < ApplicationRecord
  belongs_to :cow
  has_many :tools
  has_many :expenses, through: :tools

  def cow_id
    self.try(:user).try(:id)
  end
end
