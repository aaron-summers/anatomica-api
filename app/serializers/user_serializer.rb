class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :password_digest, :token
end
