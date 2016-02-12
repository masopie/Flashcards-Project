class AddUseridAndVisibilityToDeck < ActiveRecord::Migration
  def change
    add_column :decks, :user_id, :integer
    add_column :decks, :visibility, :boolean, default: true
  end
end
