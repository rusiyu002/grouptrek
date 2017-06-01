class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :treks
  has_many :interesteds
  has_many :goings
  has_many :comments

  has_many :interested_treks, :through => :interesteds, :source => :trek
  has_many :going_trek, :through => :goings, :source => :trek

  validates :name, :presence => true
  validates :name, :uniqueness => true
  
end
