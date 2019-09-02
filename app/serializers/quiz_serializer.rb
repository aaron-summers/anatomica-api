class QuizSerializer < ActiveModel::Serializer
  attributes :id, :serial
  belongs_to :user
  has_one :category
end
