class Quiz < ApplicationRecord
  belongs_to :user
  belongs_to :category
  # serialize :questions, JSON
end
