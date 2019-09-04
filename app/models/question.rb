class Question < ApplicationRecord
  belongs_to :category
  # has_one :option, dependent: :destroy
end
