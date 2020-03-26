import UIKit

public class Car {
    public enum `Type`: String {
        case classic, sporty, luxury
    }
    
    public var model: String
    public var type: Type
    public var image: UIImage
    
    public init(model: String, type: Type, image: UIImage) {
        self.model = model
        self.type = type
        self.image = image
    }
}
