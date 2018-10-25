class PmRecipient < ApplicationRecord
  belongs_to :private_message
  has_many :recipients, class_name: "User"
end
