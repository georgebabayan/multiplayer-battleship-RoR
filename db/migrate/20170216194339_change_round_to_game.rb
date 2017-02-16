class ChangeRoundToGame < ActiveRecord::Migration[5.0]
  def change
    rename_table :rounds, :games
  end
end
