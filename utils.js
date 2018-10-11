"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var Utils = /** @class */ (function () {
    function Utils() {
    }
    Utils.multipop = function (array, numberOfTimes) {
        var results = [];
        for (var i = 0; i < numberOfTimes; i++) {
            results.push(array.pop());
        }
        return results;
    };
    return Utils;
}());
exports.default = Utils;
//# sourceMappingURL=utils.js.map