class ChangeStatToGame < ActiveRecord::Migration[5.0]
  def change
    rename_table :stats, :games
  end
end
