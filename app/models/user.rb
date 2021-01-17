class User < ApplicationRecord
    validates :username, presence: true, uniqueness: true, length: { minimum: 5 }
    # validates :email, presence: true, uniqueness: true
    # validates :email, uniqueness: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
    validates :email, presence: true, uniqueness: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
    validates :password, presence: true, length: { in: 6..20 }

#     validates :username, length: { minimum: 2 }
#   validates :email, presence: true
#   validates :password, length: { in: 6..20 }
end
