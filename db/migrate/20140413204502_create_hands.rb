class CreateHands < ActiveRecord::Migration
  def change
    create_table :hands do |t|
    	t.belongs_to :game
    	t.integer :user_id
      t.timestamps
    end
  end
end
