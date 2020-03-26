import Foundation

public class CarPresenter {
    
    private let service: CarService
    private weak var carViewDelegate: CarViewDelegate?
    
    init(service: CarService) {
        self.service = service
    }
    
    func setViewDelegate(carViewDelegate: CarViewDelegate?){
        self.carViewDelegate = carViewDelegate
    }
    
    func showAllCars() {
        service.fetchCars() { [weak self] cars in
            if let cars = cars {
                self?.carViewDelegate?.show(cars: cars)
            }
        }
    }
}
