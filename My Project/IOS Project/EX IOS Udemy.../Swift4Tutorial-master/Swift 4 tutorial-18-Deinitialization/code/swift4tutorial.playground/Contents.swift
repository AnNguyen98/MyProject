//Deinitialization in Swift 4
//Nguyen Duc Hoang - sunlight4d@gmail.com
//https://www.youtube.com/c/NguyenDucHoang

import UIKit
//Deinitialization for custom classes.
class Stock {
    static var coinsInStock = 20_000
    static func distribute(coins: Int) -> Int {
        let numberOfDistributedCoins = min(coins, coinsInStock)
        coinsInStock = coinsInStock - numberOfDistributedCoins
        return numberOfDistributedCoins
    }
    static func receive(coins: Int) {
        coinsInStock += coins
    }
}

class GamePlayer {
    var existingCoins: Int
    init(coins: Int) {
        existingCoins = Stock.distribute(coins: coins)
    }
    func win(coins: Int){
        existingCoins += Stock.distribute(coins: coins)
    }
    
    deinit {
        print("Deinit...")
        Stock.receive(coins: existingCoins)
    }
}
var player: GamePlayer? = GamePlayer(coins: 1200)
print("Existing coins = \(player?.existingCoins)")
player!.win(coins: 150)
print("There are now \(Stock.coinsInStock) coins left in the bank")
player = nil
print("There are now \(Stock.coinsInStock) coins left in the bank")













