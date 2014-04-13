class Hand < ActiveRecord::Base
	STARTING_NUMBER_OF_CARDS = 7

	has_many :cards, as: :cardable
	belongs_to :game
	#belongs_to user

	def initialize_hand!(deck)
			deck.cards.first(STARTING_NUMBER_OF_CARDS).each do |card|
				card.update(cardable: self)
			end
	end
end
