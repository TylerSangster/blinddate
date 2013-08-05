class AddphotooToUser < ActiveRecord::Migration
  def change
    remove_column :users, :password, :string
    add_column :users, :password_digest, :string
    add_column :users, :photo, :string
  end
end
