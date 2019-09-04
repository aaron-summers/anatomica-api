class QuizSerializer < ActiveModel::Serializer
  attributes :id, :serial, :questions
  belongs_to :user
  has_one :category
end
