import UIKit

public let carsMock = [Car(model: "Chevrolet Corvette", type: .classic, image:
    UIImage(imageLiteralResourceName: "Chevrolet_Corvette.png")),
                Car(model: "Lamborghini Aventador", type: .sporty, image:  UIImage(imageLiteralResourceName: "Lamborghini_Aventador.png")),
                Car(model: "Bugatti Veyron", type: .luxury, image:  UIImage(imageLiteralResourceName: "Bugatti_Veyron.png"))]

public class CarService {
    
    public init() {}
    
    public func fetchCars(callBack: ([Car]?) -> Void) {
        callBack(carsMock)
    }
    
    public func getCarBy(type: (String), callBack: (Car?) -> Void) {
        if let car = carsMock.first(where: { $0.type.rawValue == type }) {
            callBack(car)
        } else {
            callBack(nil)
        }
    }
}
