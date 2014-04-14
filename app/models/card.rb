class Card < ActiveRecord::Base
	belongs_to :cardable, polymorphic: true
	belongs_to :suit, class_name: 'CardSuit', foreign_key: :card_suit_id
	belongs_to :value, class_name: 'CardValue', foreign_key: :card_value_id
end
