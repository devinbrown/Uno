class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
    	t.integer :last_played_card_id
    	t.integer :deck_id
      t.timestamps
    end
  end
end
