class CreateGuesses < ActiveRecord::Migration
  def change
    create_table :guesses do |t|
      t.integer :round_id, {null: false}
      t.integer :card_id
      t.boolean :correct, {default: false}
      t.string :body
      t.timestamps null: false
    end
  end
end
