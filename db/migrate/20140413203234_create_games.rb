class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
=begin
    	t.integer :last_played_card_id
=end
    	t.integer :deck_id
      t.timestamps
    end
  end
end
