class ChangeGameToSide < ActiveRecord::Migration[5.0]
  def change
    rename_table :games, :sides
  end
end
