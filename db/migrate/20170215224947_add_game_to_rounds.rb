class AddGameToRounds < ActiveRecord::Migration[5.0]
  def change
    add_reference :rounds, :game, foreign_key: true
  end
end
