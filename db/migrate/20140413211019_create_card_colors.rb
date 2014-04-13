class CreateCardColors < ActiveRecord::Migration
  def change
    create_table :card_colors do |t|
    	t.string :color
      t.timestamps
    end
  end
end
