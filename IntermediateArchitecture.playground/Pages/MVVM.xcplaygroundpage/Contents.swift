/*:
[Previous](@previous)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Next](@next)

# Model-View-ViewModel (MVVM)
- - - - - - - - - -
![MVVM Diagram](MVVM_Diagram.png)

O padrão de arquitetura Model-View-ViewModel (MVVM), consiste em três camadas: models, view e view-models.

- **Models** persistem os dados de seus respectivos objetos em memória. Geralmente são sctructs ou classes.
- **View-models** convertem e formatão os dados do model  de forma a serem utilizados na apresentação da view.
- **Views** responsáveis por apresentar elementos visuais e realizar controles de exibição.

## Código Exemplo
 */

import PlaygroundSupport
import UIKit

let image = UIImage(imageLiteralResourceName: "Chevrolet_Corvette.png")
let carro = Carro(id: 0, tipo: .exportivo, modelo: "Chevrolet Corvette", ano: Date(), descricao: "Vermelhor, covercivel", image: image)

let viewModel = CarroViewModel(carro: carro)

let frame = CGRect(x: 0, y: 0, width: 320, height: 400)

let view = CarroView(frame: frame)

viewModel.configureView(view)

PlaygroundPage.current.liveView = view
