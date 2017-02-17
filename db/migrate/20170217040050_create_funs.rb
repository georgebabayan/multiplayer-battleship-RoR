class CreateFuns < ActiveRecord::Migration[5.0]
  def change
    create_table :funs do |t|
      t.text :board1
      t.text :board2
      t.text :board1_display
      t.text :board2_display
      t.integer :turn
      t.references :player1
      t.references :player2

      t.timestamps
    end
  end
end
