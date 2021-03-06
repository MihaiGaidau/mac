import Foundation

public class Card:NSObject{
    let color:Color
    let value:Value
    
    init(c:Color, v:Value){
        self.color = c
        self.value = v
    }
    override public var description:String{
        return("\(self.color) \(self.value)")
    }
    
    override public func isEqual(_ object: Any?) -> Bool {
         if let object = object as? Card
        {
           return (self.color == object.color && self.value == object.value)
        }
        else
         {
            return false
        }
    }
}

