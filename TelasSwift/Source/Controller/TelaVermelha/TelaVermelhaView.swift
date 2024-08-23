//
//  TelaAzulView.swift
//  TelasSwift
//
//  Created by IFBIOTIC17 on 23/08/24.
//

import Foundation
import UIKit

class TelaVermelhaView: ViewDefault {
    
    var onTelaVerdeTap: (()->Void)?
    var onTelaAzulTap: (()->Void)?
    
    var buttonTelaVerde = ButtonDefault(botao: "Voltar tela verde", color: .green)
    var buttonTelaAzul = ButtonDefault(botao: "Voltar tela azul", color: .blue)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .red
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func setupVisualElements() {
        super.setupVisualElements()
        
        
        self.addSubview(buttonTelaVerde)
        self.addSubview(buttonTelaAzul)
        
        buttonTelaVerde.addTarget(self, action: #selector(buttonTelaVerdeTap), for: .touchUpInside)
        buttonTelaAzul.addTarget(self, action: #selector(telaAzulTap), for: .touchUpInside)
        
        
        NSLayoutConstraint.activate([
            buttonTelaVerde.widthAnchor.constraint(equalToConstant: 374),
            buttonTelaVerde.heightAnchor.constraint(equalToConstant: 60),
            buttonTelaVerde.topAnchor.constraint(equalTo: self.topAnchor, constant: 228),
            buttonTelaVerde.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 57),
            buttonTelaVerde.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -57),
            
            buttonTelaAzul.widthAnchor.constraint(equalToConstant: 374),
            buttonTelaAzul.heightAnchor.constraint(equalToConstant: 60),
            buttonTelaAzul.topAnchor.constraint(equalTo: buttonTelaVerde.bottomAnchor, constant: 20),
            buttonTelaAzul.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 15),
            buttonTelaAzul.trailingAnchor.constraint(equalTo:self.trailingAnchor,constant:  -15),
            
            
        ])
    }
    
    @objc
    private func buttonTelaVerdeTap() {
        onTelaVerdeTap?()
    }
    
    @objc
    private func telaAzulTap() {
        onTelaAzulTap?()
    }
}
