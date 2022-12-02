require 'rspec'
require './lib/card'
require './lib/deck'
require './lib/player'
require './lib/turn'

RSpec.describe Turn do
    # describe "basic turn" do 
    # describe "war" do
    # describe "mutully_assured_destruction"

    it "exists" do
        card1 = Card.new(:heart, 'Jack', 11)
        card2 = Card.new(:heart, '10', 10)
        card3 = Card.new(:heart, '9', 9)
        card4 = Card.new(:diamond, 'Jack', 11) 
        card5 = Card.new(:heart, '8', 8)  
        card6 = Card.new(:diamond, 'Queen', 12) 
        card7 = Card.new(:heart, '3', 3) 
        card8 = Card.new(:diamond, '2', 2) 

        deck1 = Deck.new([card1, card2, card5, card8]) 
        deck2 = Deck.new([card3, card4, card6, card7]) 
   
        player1 = Player.new("Megan", deck1)
        player2 = Player.new("Aurora", deck2) 
    
        turn = Turn.new(player1, player2) 

        expect(turn).to be_an_instance_of(Turn)
    end


    it "has basic a type" do
        card1 = Card.new(:heart, 'Jack', 11)
        card2 = Card.new(:heart, '10', 10)
        card3 = Card.new(:heart, '9', 9)
        card4 = Card.new(:diamond, 'Jack', 11) 
        card5 = Card.new(:heart, '8', 8)  
        card6 = Card.new(:diamond, 'Queen', 12) 
        card7 = Card.new(:heart, '3', 3) 
        card8 = Card.new(:diamond, '2', 2) 

        deck1 = Deck.new([card1, card2, card5, card8]) 
        deck2 = Deck.new([card3, card4, card6, card7]) 

        player1 = Player.new("Megan", deck1)
        player2 = Player.new("Aurora", deck2) 

        turn = Turn.new(player1, player2)

        turn.player1
        turn.player2

        expect(turn.spoils_of_war).to eq([])
        expect(turn.type).to eq(:basic)
    end

    it "has a war type" do
        card1 = Card.new(:heart, 'Jack', 11) 
        card2 = Card.new(:heart, '10', 10)
        card3 = Card.new(:heart, '9', 9)
        card4 = Card.new(:diamond, 'Jack', 11)
        card5 = Card.new(:heart, '8', 8) 
        card6 = Card.new(:diamond, 'Queen', 12) 
        card7 = Card.new(:heart, '3', 3) 
        card8 = Card.new(:diamond, '2', 2)

        deck1 = Deck.new([card1, card2, card5, card8]) 
        deck2 = Deck.new([card4, card3, card6, card7])

        player1 = Player.new("Megan", deck1)
        player2 = Player.new("Aurora", deck2)

        turn = Turn.new(player1, player2)

        turn.player1
        turn.player2

        expect(turn.type).to eq(:war)
    end

    it "has a mutually_assured_destruction type" do
        card1 = Card.new(:heart, 'Jack', 11) 
        card2 = Card.new(:heart, '10', 10)
        card3 = Card.new(:heart, '9', 9)
        card4 = Card.new(:diamond, 'Jack', 11)
        card5 = Card.new(:heart, '8', 8) 
        card6 = Card.new(:diamond, '8', 8) 
        card7 = Card.new(:heart, '3', 3) 
        card8 = Card.new(:diamond, '2', 2)

        deck1 = Deck.new([card1, card2, card5, card8])
        deck2 = Deck.new([card4, card3, card6, card7])

        player1 = Player.new("Megan", deck1)
        player2 = Player.new("Aurora", deck2) 

        turn = Turn.new(player1, player2)

        turn.player1
        turn.player2

        expect(turn.type).to eq(:mutually_assured_destruction)
     end

     it "has a basic winner" do
        card1 = Card.new(:heart, 'Jack', 11)
        card2 = Card.new(:heart, '10', 10)
        card3 = Card.new(:heart, '9', 9)
        card4 = Card.new(:diamond, 'Jack', 11) 
        card5 = Card.new(:heart, '8', 8)  
        card6 = Card.new(:diamond, 'Queen', 12) 
        card7 = Card.new(:heart, '3', 3) 
        card8 = Card.new(:diamond, '2', 2) 

        deck1 = Deck.new([card1, card2, card5, card8]) 
        deck2 = Deck.new([card3, card4, card6, card7]) 

        player1 = Player.new("Megan", deck1)
        player2 = Player.new("Aurora", deck2) 

        turn = Turn.new(player1, player2)

        turn.player1
        turn.player2

        winner = turn.winner

        expect(turn.winner).to eq(player1)
     end

     it "has a war winner" do
        card1 = Card.new(:heart, 'Jack', 11) 
        card2 = Card.new(:heart, '10', 10)
        card3 = Card.new(:heart, '9', 9)
        card4 = Card.new(:diamond, 'Jack', 11)
        card5 = Card.new(:heart, '8', 8) 
        card6 = Card.new(:diamond, 'Queen', 12) 
        card7 = Card.new(:heart, '3', 3) 
        card8 = Card.new(:diamond, '2', 2)

        deck1 = Deck.new([card1, card2, card5, card8]) 
        deck2 = Deck.new([card4, card3, card6, card7])

        player1 = Player.new("Megan", deck1)
        player2 = Player.new("Aurora", deck2)

        turn = Turn.new(player1, player2)

        turn.player1
        turn.player2

        winner = turn.winner

        expect(turn.winner).to eq(winner)
     end

     it "has a mutually_assured_destruction winner" do
        card1 = Card.new(:heart, 'Jack', 11) 
        card2 = Card.new(:heart, '10', 10)
        card3 = Card.new(:heart, '9', 9)
        card4 = Card.new(:diamond, 'Jack', 11)
        card5 = Card.new(:heart, '8', 8) 
        card6 = Card.new(:diamond, '8', 8) 
        card7 = Card.new(:heart, '3', 3) 
        card8 = Card.new(:diamond, '2', 2)

        deck1 = Deck.new([card1, card2, card5, card8])
        deck2 = Deck.new([card4, card3, card6, card7])

        player1 = Player.new("Megan", deck1)
        player2 = Player.new("Aurora", deck2) 

        turn = Turn.new(player1, player2)

        turn.player1
        turn.player2

        winner = turn.winner

        expect(turn.winner).to eq(winner)
     end
end
    