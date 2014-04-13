class Deck < ActiveRecord::Base
	has_many :cards, as: :cardable

	def draw(hand)
		card = self.cards.first
		card.update(cardable: hand)
		card
	end
end
