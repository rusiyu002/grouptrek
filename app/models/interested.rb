class Interested < ApplicationRecord
  belongs_to :user
  belongs_to :trek

  validates :user_id, :presence => true
validates :user_id, :uniqueness => { :scope => [:trek_id] }
end
