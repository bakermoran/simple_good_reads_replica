class User < ApplicationRecord
    attr_accessor :remember_token
    before_save { user_name.downcase! }
    before_save { first_name.downcase! }
    before_save { last_name.downcase! }
    has_many :reviews
    validates :user_name, presence: true, length: { maximum: 50 }, uniqueness: { case_sensitive: false }
    validates :first_name, presence: true, length: { maximum: 50 }
    validates :last_name, presence: true, length: { maximum: 50 }
    validates :password, presence: true, length: { minimum: 6 }, allow_nil: true
    has_secure_password

    def User.digest(string)
        cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                      BCrypt::Engine.cost
        BCrypt::Password.create(string, cost: cost)
    end

    def User.new_token
        SecureRandom.urlsafe_base64
    end

    def remember
        self.remember_token = User.new_token
        update_attribute(:remember_digest, User.digest(remember_token))
    end

    def forget
        update_attribute(:remember_digest, nil)
    end

    def authenticated?(remember_token)
        return false if remember_digest.nil?
        BCrypt::Password.new(remember_digest).is_password?(remember_token)
    end
end
