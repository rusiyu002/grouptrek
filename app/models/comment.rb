class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :trek

  validates :user_id, :presence => true
  validates :trek_id, :presence => true
  validates :body, :presence => true
end
