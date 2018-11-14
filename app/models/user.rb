class User < ApplicationRecord
  has_many :posts, dependent: :destroy
  has_one :address
  has_and_belongs_to_many :events
  has_many :enrollments
  has_many :games, through: :enrollments
  has_one :wallet
  has_one :payment_history, through: :wallet
end
