import UIKit

public class Carro {
    public enum Tipo {
        case classico, exportivo, luxo
    }
    
    public var modelo: String
    public var tipo: Tipo
    public var image: UIImage
    
    public init( modelo: String, tipo: Tipo, image: UIImage) {
        self.modelo = modelo
        self.tipo = tipo
        self.image = image
    }
}
