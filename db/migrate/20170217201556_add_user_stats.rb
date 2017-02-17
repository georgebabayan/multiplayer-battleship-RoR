class AddUserStats < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :game_lost, :integer
    add_column :users, :game_won, :integer
  end
end
