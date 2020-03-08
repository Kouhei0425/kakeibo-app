class AddUserIdToThings < ActiveRecord::Migration[5.0]
  def change
    add_column :things, :user_id, :integer
  end
end
