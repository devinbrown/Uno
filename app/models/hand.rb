class Hand < ActiveRecord::Base
	STARTING_NUMBER_OF_CARDS = 26

	has_many :cards, as: :cardable
	belongs_to :game
	#belongs_to user

	def initialize_hand!(deck)
		deck.cards.first(STARTING_NUMBER_OF_CARDS).each do |card|
			card.update(cardable: self)
		end
	end

=begin
No longer necessary in non-Uno game
	def remove_card!(card)
		card.update(cardable: nil)
	end
=end

end
