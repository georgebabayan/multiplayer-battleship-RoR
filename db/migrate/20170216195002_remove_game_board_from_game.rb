class RemoveGameBoardFromGame < ActiveRecord::Migration[5.0]
  def change
    remove_column :games, :board2
  end
end
