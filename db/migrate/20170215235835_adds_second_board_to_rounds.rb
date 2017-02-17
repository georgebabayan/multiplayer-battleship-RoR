class AddsSecondBoardToRounds < ActiveRecord::Migration[5.0]
  def change
  	add_column :rounds, :board2, :text
  end
end
