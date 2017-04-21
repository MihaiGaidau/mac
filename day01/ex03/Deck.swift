import Foundation

public class Deck:NSObject{
    public static let allSpades = Value.allValue.map{Card(c: Color.Spades, v: $0)}
    public static let allClubs = Value.allValue.map{Card(c: Color.Clubs, v: $0)}
    public static let allHearts = Value.allValue.map{Card(c: Color.Hearts, v: $0)}
    public static let allDiamonds = Value.allValue.map{Card(c: Color.Diamonds, v: $0)}
    public static let allCards: [Card] = allSpades + allClubs + allHearts + allDiamonds
}

extension Array {
    func shuffle() -> Array {
        var mixed = self
        var q: Int
        for i in 0..<mixed.count {
            q = Int(arc4random_uniform(52))
            if q != i {
            swap(&mixed[i], &mixed[q])
            }
        }
        return mixed
    }
}