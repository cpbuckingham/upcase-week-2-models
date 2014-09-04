class AddUsersToDecks < ActiveRecord::Migration
  def change
    add_column :decks, :user_id, :integer
    add_index :decks, :user_id
  end
end
#rails g model User email:string
#rails g migration AddUsersToDecks