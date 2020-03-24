import UIKit

class CarroService {
    
    func buscaCarro(tipo:(Carro.Tipo), callBack:(Carro?) -> Void) {
        let carrosMock = [Carro(modelo: "Chevrolet Corvette", tipo: .classico, image:  UIImage(imageLiteralResourceName: "Chevrolet_Corvette.png")),
                      Carro(modelo: "Lamborghini Aventador", tipo: .exportivo, image:  UIImage(imageLiteralResourceName: "Lamborghini_Aventador.png")),
                      Carro(modelo: "Bugatti Veyron", tipo: .luxo, image:  UIImage(imageLiteralResourceName: "Bugatti_Veyron.png"))]
        
        
        if let carro = carrosMock.first(where: { $0.tipo == tipo }) {
            callBack(carro)
        } else {
            callBack(nil)
        }
    }
}
