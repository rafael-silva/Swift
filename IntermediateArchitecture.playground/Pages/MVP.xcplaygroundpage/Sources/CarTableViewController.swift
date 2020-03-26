import UIKit

public class CarTableViewController: UITableViewController {
    
    private let presenter = CarPresenter(service: CarService())
    private var cars: [Car] = []
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        
        tableVewSetup()
        
        presenter.setViewDelegate(carViewDelegate: self)
        presenter.showAllCars()
    }
    
    private func tableVewSetup() {
        tableView.rowHeight = UITableView.automaticDimension
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    public override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cars.count
    }
    
    public override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        
        let car = cars[indexPath.row]
        cell.textLabel?.text = car.model
        cell.imageView?.image = car.image
        cell.imageView?.contentMode = .scaleAspectFit
        
        return cell
    }
}

extension CarTableViewController: CarViewDelegate {
    public func show(cars: [Car]) {
        self.cars = cars
    }
}

