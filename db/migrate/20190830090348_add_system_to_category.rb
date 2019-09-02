class AddSystemToCategory < ActiveRecord::Migration[6.0]
  def change
    add_column :categories, :system, :string
  end
end
