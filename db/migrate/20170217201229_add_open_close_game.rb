class AddOpenCloseGame < ActiveRecord::Migration[5.0]
  def change
    add_column :funs, :game_status, :boolean
  end
end
