class AddCategoryToActivity < ActiveRecord::Migration
  def change
  	remove_column :activities, :category, :integer
    add_column :activities, :category_id, :integer
  end
end
