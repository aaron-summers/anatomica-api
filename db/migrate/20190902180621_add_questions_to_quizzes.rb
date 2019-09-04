class AddQuestionsToQuizzes < ActiveRecord::Migration[6.0]
  def change
    add_column :quizzes, :questions, :jsonb
    # , array: true, default: []
  end
end
