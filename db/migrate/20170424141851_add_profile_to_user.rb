class AddProfileToUser < ActiveRecord::Migration
  def change
    add_column :users, :profile, :attachment
  end
end
