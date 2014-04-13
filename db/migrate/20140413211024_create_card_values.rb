class CreateCardValues < ActiveRecord::Migration
  def change
    create_table :card_values do |t|
    	t.string :value
      t.timestamps
    end
  end
end
