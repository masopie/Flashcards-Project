class AddColumnFirstGuessRightToGuesses < ActiveRecord::Migration
  def change
    add_column :guesses, :first_guess_correct, :boolean, default: false
  end
end
