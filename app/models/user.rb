class User < ApplicationRecord
    before_save { user_name.downcase! }
    before_save { first_name.downcase! }
    before_save { last_name.downcase! }
    has_many :reviews
    validates :user_name, presence: true, length: { maximum: 50 }, uniqueness: { case_sensitive: false }
    validates :first_name, presence: true, length: { maximum: 50 }
    validates :last_name, presence: true, length: { maximum: 50 }
    validates :password, presence: true, length: { minimum: 6 }
    has_secure_password
end
