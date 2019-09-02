class Question < ApplicationRecord
  belongs_to :category
  has_one :option
  has_and_belongs_to_many :quizzes
end
