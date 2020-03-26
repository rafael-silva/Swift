import UIKit

public class CarroViewModel {
    
    private let carro: Carro
    private let calendar: Calendar
    
    var modelo: String {
        return carro.modelo
    }
    
    var anos: String {
        let dataAtual = calendar.startOfDay(for: Date())
        let dataFabricacao = calendar.startOfDay(for: carro.ano)
        let dataComponets = calendar.dateComponents([.year], from: dataFabricacao, to: dataAtual)
       
        guard let anos = dataComponets.year else { return "-"}
        
        return "\(anos), anos de sua fabricação"
    }
    
    var descricao: String {
        return carro.descricao
    }
    
    var image: UIImage {
        return carro.image
    }
    
    public init(carro: Carro) {
        self.carro = carro
        self.calendar = Calendar(identifier: .iso8601)
    }
}

extension CarroViewModel {
    public func configureView(_ view: CarroView) {
        view.carroImage.image = image
        view.modeloLabel.text = modelo
        view.descricaoLabel.text = descricao
        view.anosLabel.text = anos
    }
}
