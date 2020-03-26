import UIKit

public class CarViewController: UIViewController {
    
    private let presenter = CarPresenter(service: CarService())
    private let tableView = UITableView()
    private var cars: [Car] = []
    
    public override func loadView() {
        self.view = setupView()
    }
    
    public override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
        presenter.setViewDelegate(carViewDelegate: self)
    }
    
    private func setupView() -> UIView {
        tableView.backgroundColor = .white
        tableView.focusItems(in: .zero)
                
        return tableView
    }
}

extension CarViewController: UITableViewDataSource {
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cars.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.cellForRow(at: indexPath)!
        
        cell.textLabel?.text = cars[indexPath.row].model
        
        return cell
    }
}

extension CarViewController: UITableViewDelegate {}

extension CarViewController: CarViewDelegate {
    public func show(cars: [Car]) {
        self.cars = cars
    }
}
