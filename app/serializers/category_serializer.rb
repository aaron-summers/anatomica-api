class CategorySerializer < ActiveModel::Serializer
  attributes :id, :serial, :system
  has_many :questions
  has_many :quizzes
end
