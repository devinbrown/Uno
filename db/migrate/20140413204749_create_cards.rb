class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
    	t.integer :card_color_id
    	t.integer :card_value_id
    	t.references :cardable, polymorphic: true
      t.timestamps
    end
  end
end
