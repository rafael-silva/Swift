import UIKit

public class Carro {
    public enum TipoCarro {
        case popular, exportivo, luxo
    }
    
    public var id: Int
    public var tipo: TipoCarro
    public var modelo: String
    public var ano: Date
    public var descricao: String
    public var image: UIImage
    
    public init(id: Int, tipo: TipoCarro, modelo: String,
         ano: Date, descricao: String, image: UIImage) {
        self.id = id
        self.tipo = tipo
        self.modelo = modelo
        self.ano = ano
        self.descricao = descricao
        self.image = image
    }
}
