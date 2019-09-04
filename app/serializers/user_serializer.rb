class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :password_digest, :token
  has_many :quizzes
  # has_many :categories
end
