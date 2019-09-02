class RemoveTitleFromCategory < ActiveRecord::Migration[6.0]
  def change

    remove_column :categories, :title, :string
  end
end
