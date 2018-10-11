"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var hand_1 = require("./hand");
var Game = /** @class */ (function () {
    function Game(gameName) {
        this.gameName = gameName;
        this.hands = [new hand_1.default(), new hand_1.default()];
        this.maxPointsAllowed = 21;
    }
    Game.initBlackjack = function () {
        return new Game("Derivco-Blackjack");
    };
    return Game;
}());
exports.default = Game;
//# sourceMappingURL=game.js.map