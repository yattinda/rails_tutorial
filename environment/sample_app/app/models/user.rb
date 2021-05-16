class User < ApplicationRecord
  #self.email.downcaseのselfは省略可
  #before_save { email.downcase! } ともかける
  before_save { self.email = email.downcase }
  validates :name, presence: true, length: { maximum: 50 }
  #大文字は定数
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
    format: { with: VALID_EMAIL_REGEX },
    uniqueness: { case_sensitive: false }
  has_secure_password
end
