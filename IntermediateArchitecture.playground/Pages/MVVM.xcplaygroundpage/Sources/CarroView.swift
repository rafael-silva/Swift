import UIKit
import Foundation

public class CarroView: UIView {
    
    let modeloLabel: UILabel
    let descricaoLabel: UILabel
    let anosLabel: UILabel
    let carroImage: UIImageView
    
    public override init(frame: CGRect) {
        var containerFrame = CGRect(x: 0, y: 16,
                                    width: frame.width,
                                    height: frame.height / 2)
        
        carroImage = UIImageView(frame: containerFrame)
        carroImage.contentMode = .scaleAspectFit
        
        containerFrame.origin.y += containerFrame.height + 20
        containerFrame.size.height = 20
        
        modeloLabel = UILabel(frame: containerFrame)
        modeloLabel.textAlignment = .center

        containerFrame.origin.y += containerFrame.height
        
        descricaoLabel = UILabel(frame: containerFrame)
        descricaoLabel.textAlignment = .center
        
        containerFrame.origin.y += containerFrame.height
        
        anosLabel = UILabel(frame: containerFrame)
        anosLabel.textAlignment = .center
        
        super.init(frame: frame)
        
        backgroundColor = .white
        addSubview(carroImage)
        addSubview(modeloLabel)
        addSubview(descricaoLabel)
        addSubview(anosLabel)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

