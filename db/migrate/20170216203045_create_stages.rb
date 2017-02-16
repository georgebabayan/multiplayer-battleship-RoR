class CreateStages < ActiveRecord::Migration[5.0]
  def change
    create_table :stages do |t|
      t.references :game, foreign_key: true
      t.text :player1_move
      t.text :player2_move

      t.timestamps
    end
  end
end
