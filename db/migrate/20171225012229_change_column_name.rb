class ChangeColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :recipes, :description, :category
  end
end
