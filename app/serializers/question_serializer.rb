class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :content, :answer
  has_one :category
  has_one :option
end
