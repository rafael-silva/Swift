/*:
 [Previous](@previous)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Next](@next)

# Model-View-Presenter (MVP)
- - - - - - - - - -
![MVVM Diagram](MVP_Diagram.png)

O padrão de arquitetura Model-View-Presenter (MVP), consiste em três camadas: models, view e presenter.

- **Models** persistem os dados de seus respectivos objetos em memória. Geralmente são sctructs ou classes.

 - **View** responsável por apresentar elementos visuais e realizar controles de exibição além do controle de ações do usuário.

 - **Presenter** responsáveis pela regra de negocio, atualizar a view e responder ao comandos enviados pela view, é importante que esta camada seja independente do UIKit.

## Código Exemplo
*/

import PlaygroundSupport

let view = CarViewController()
PlaygroundPage.current.liveView = view
