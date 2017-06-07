class Trek < ApplicationRecord
  belongs_to :user
  has_many :interesteds
  has_many :goings
  has_many :comments

  has_many :interested_users, :through => :interesteds, :source => :user
  has_many :participant, :through => :goings, :source => :user

  # validates :user_id, :presence => true

end
