class ChangeGameToStat < ActiveRecord::Migration[5.0]
  def change
    rename_table :games, :stats
  end
end
