package blackjack

// ParseCard returns the integer value of a card following blackjack ruleset.
func ParseCard(card string) int {
	switch card {
	case "ace":
		return 11
	case "king":
		return 10
	case "queen":
		return 10
	case "jack":
		return 10
	case "ten":
		return 10
	case "nine":
		return 9
	case "eight":
		return 8
	case "seven":
		return 7
	case "six":
		return 6
	case "five":
		return 5
	case "four":
		return 4
	case "three":
		return 3
	case "two":
		return 2
	default:
		return 0
	}
}

// FirstTurn returns the decision for the first turn, given two cards of the
// player and one card of the dealer.
func FirstTurn(card1, card2, dealerCard string) string {
	var card1_n = ParseCard(card1)
	var card2_n = ParseCard(card2)
	var dealerCard_n = ParseCard(dealerCard)
	var cardSum = card1_n + card2_n

	switch {
	case cardSum == 22:
		return "P"
	case cardSum <= 11:
		return "H"
	case card1_n == 11 && card2_n == 11:
		return "S"
	case (cardSum == 21) && dealerCard_n < 10:
		return "W"
	case (cardSum == 21) && dealerCard_n >= 10:
		return "S"
	case (cardSum >= 17) && (cardSum <= 20):
		return "S"
	case (cardSum >= 12) && (cardSum <= 16) && dealerCard_n < 7:
		return "S"
	case (cardSum >= 12) && (cardSum <= 16) && dealerCard_n >= 7:
		return "H"
	default:
		return "S"
	}
}
