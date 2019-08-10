class User < ApplicationRecord
  # VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  # VALID_NAME_REGEX = /^[a-z ,.'-]+/i
  validates :email, presence: true, length: { minimum: 3, maximum: 255}
            # format: { with: VALID_EMAIL_REGEX }
  # validates :first_name, format: { with: VALID_NAME_REGEX }
  # validates :last_name, format: { with: VALID_NAME_REGEX }
end
