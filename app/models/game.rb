class Game < ActiveRecord::Base
	has_one :deck
	belongs_to :last_played_card, class_name: 'Card'
	has_many :hands

	def initalize_game!(user)
		# create the deck (default)
		d = self.deck.create

		# create cards, 2 of each card
		deck_cards = [];
		2.times do
			CardColor.all.each do |c|
				CardValue.all.each do |v|
					deck_cards << d.cards.new(color: c, value: v)
				end
			end
		end

		deck_cards.shuffle.each do |deck_card|
			deck_card.save
		end

		# create user id to identify 
		player_hand = self.hands.create(user: user).initalize_hand!(d)
		ai_hand = self.hands.create.initalize_hand!(d)
	

		# flip first card in deck to be played
		self.last_played_card = d.cards.first
		self.last_played_card.update(cardable: nil)
	end

	def play_card
	end

end

