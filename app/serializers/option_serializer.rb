class OptionSerializer < ActiveModel::Serializer
  attributes :id, :content
  belongs_to :question
end
