class CreateRounds < ActiveRecord::Migration
  def change
    create_table :rounds do |t|
      t.integer :deck_id, {null: false}
      t.integer :user_id
      t.timestamps null: false
    end
  end
end
