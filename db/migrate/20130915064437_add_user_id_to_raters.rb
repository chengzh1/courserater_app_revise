class AddUserIdToRaters < ActiveRecord::Migration
  def change
      add_column :raters, :user_id, :integer
  end
end
