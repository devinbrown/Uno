class Game < ActiveRecord::Base
	has_one :deck
=begin
No longer necessary in non-Uno game
	belongs_to :last_played_card, class_name: 'Card'
=end
	has_many :hands

=begin
Need to add players from original Uno implementation
	has_many :players
=end

	def initalize_game!(user)
		# create the deck (default)
		d = self.deck.create

		# create cards, 2 of each card
		deck_cards = [];
		1.times do
			CardSuit.all.each do |s|
				CardValue.all.each do |v|
					deck_cards << d.cards.new(suit: s, value: v)
				end
			end
		end

		deck_cards.shuffle.each do |deck_card|
			deck_card.save
		end

		# create user id to identify 
		player_one_hand = self.hands.create(user: user1).initalize_hand!(d)
		player_two_hand = self.hands.create(user: user2).initalize_hand!(d)
	
=begin
No longer necessary in non-uno game
		# flip first card in deck to be played
		self.last_played_card = d.cards.first
		self.last_played_card.update(cardable: nil)
=end
	end


end

