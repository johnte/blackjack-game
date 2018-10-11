/// <reference path="typings/tsd.d.ts" />

import Game from "./game";
import Deck from "./deck";
import Player from "./player";
import {generateCardService} from "./card";

let game = Game.initBlackjack();
export {game as default};

let deck = new Deck(generateCardService())
deck.initialDeal()
displayTurn()
humanTurn()
displayTurn()
if (!game.isOver) dealerTurn()
if (!game.isOver) displayTurn()
if (!game.isOver) endGame()

export function displayTurn () {
	console.log("**************Derivco Blackjack *********************")
	console.log("Human Player Hand Total Value:", game.hands[Player.Human].getSum())
	console.log("Human Player Cards:", game.hands[Player.Human].getCardsDisplayName())
	console.log("");
	console.log("Dealer Hand Total Value:", game.hands[Player.Dealer].getSum())
	console.log("Dealer Cards:", game.hands[Player.Dealer].getCardsDisplayName())
	console.log("*********** End of turn ***********************\n")
	console.log("");
}

function humanTurn () {
	if (isPlayerBusted(Player.Human)) {
		return endGame(Player.Dealer);
	}
	if (game.hands[Player.Human].getSum() < 17) {
		deck.hit(Player.Human);
		humanTurn();	
	}
}

function dealerTurn () {
	if (isPlayerBusted(Player.Dealer)) {
		return endGame(Player.Human);
	}
	if (game.hands[Player.Dealer].getSum() < 17) {
		deck.hit(Player.Dealer);
		dealerTurn();	
	}
}

function isPlayerBusted(player: Player): Boolean {
	if (game.hands[player].getSum() > game.maxPointsAllowed) {
		return true
	}
	return false
}

function endGame(winner?: Player) {
	game.isOver = true;
	let nameOfWinner;
	if (winner) {
		nameOfWinner = Player[winner]
	} else {
		nameOfWinner = calculateWinner();	
	}
	console.log("GAME IS OVER");
	console.log("Winner is:", nameOfWinner)	
}

function calculateWinner(): String {
	let dealerPoints = game.hands[Player.Dealer].getSum();
	let humanPoints = game.hands[Player.Human].getSum();
	if (humanPoints > dealerPoints) {
		return Player[Player.Human];
	}
	else { // dealer always win even if its a tire
		return Player[Player.Dealer];
	}	
}