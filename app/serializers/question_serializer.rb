class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :content, :answer, :altAnswers
  has_one :category
  # has_one :option
end
