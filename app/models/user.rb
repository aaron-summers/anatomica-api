class User < ApplicationRecord
    has_secure_password
    validates :username, uniqueness: { case_sensitive: false }
    has_many :quizzes, dependent: :destroy
    has_many :categories, through: :quizzes

    def token
        JWT.encode({ user_id: self.id }, ENV['RAILS_SECRET'])
    end

    # def self.decode_token_and_return_the_user_who_made_the_request(token)
    def self.decode_token(token)
        payload = JWT.decode(token, ENV['RAILS_SECRET'])[0]
        self.find(payload["user_id"])
    end    
        
end
