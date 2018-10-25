class User < ApplicationRecord
  belongs_to :city
  has_many :comments
  has_many :private_messages
  has_many :pm_recipients
  has_many :private_message through: :pm_recipients
end
