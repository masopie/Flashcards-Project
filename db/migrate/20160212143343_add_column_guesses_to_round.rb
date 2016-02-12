class AddColumnGuessesToRound < ActiveRecord::Migration
  def change
    add_column :rounds, :total_guesses, :integer, default: 0
  end
end
