import UIKit

public class CarroViewModel {
    
    private let carro: Carro
    private let caledar: Calendar
    
    var modelo: String {
        return carro.modelo
    }
    
    var anos: String {
        let dataAtual = caledar.startOfDay(for: Date())
        let dataFabricacao = caledar.startOfDay(for: carro.ano)
        let dataComponets = caledar.dateComponents([.year], from: dataFabricacao, to: dataAtual)
       
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
        self.caledar = Calendar(identifier: .iso8601)
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
