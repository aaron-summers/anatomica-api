class AddSerialToCategories < ActiveRecord::Migration[6.0]
  def change
    add_column :categories, :serial, :string
  end
end
