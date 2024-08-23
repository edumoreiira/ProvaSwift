//
//  TelaAzulView.swift
//  TelasSwift
//
//  Created by IFBIOTIC17 on 23/08/24.
//

import Foundation
import UIKit

class TelaVerdeView: ViewDefault {
    
    var onTelaVermelhaTap: (()->Void)?
    var onTelaAzulTap: (()->Void)?
    
    var buttonTelaVermelha = ButtonDefault(botao: "Tela vermelha", color: .red)
    var buttonTelaAzul = ButtonDefault(botao: "Voltar tela azul", color: .blue)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .green
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func setupVisualElements() {
        super.setupVisualElements()
        
        
        self.addSubview(buttonTelaVermelha)
        self.addSubview(buttonTelaAzul)
        
        buttonTelaVermelha.addTarget(self, action: #selector(telaVermelhaTap), for: .touchUpInside)
        buttonTelaAzul.addTarget(self, action: #selector(telaAzulTap), for: .touchUpInside)
        
        
        NSLayoutConstraint.activate([
            buttonTelaVermelha.widthAnchor.constraint(equalToConstant: 374),
            buttonTelaVermelha.heightAnchor.constraint(equalToConstant: 60),
            buttonTelaVermelha.topAnchor.constraint(equalTo: self.topAnchor, constant: 228),
            buttonTelaVermelha.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 57),
            buttonTelaVermelha.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -57),
            
            buttonTelaAzul.widthAnchor.constraint(equalToConstant: 374),
            buttonTelaAzul.heightAnchor.constraint(equalToConstant: 60),
            buttonTelaAzul.topAnchor.constraint(equalTo: buttonTelaVermelha.bottomAnchor, constant: 20),
            buttonTelaAzul.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 15),
            buttonTelaAzul.trailingAnchor.constraint(equalTo:self.trailingAnchor,constant:  -15),
            
            
        ])
    }
    
    @objc
    private func telaVermelhaTap() {
        onTelaVermelhaTap?()
    }
    
    @objc
    private func telaAzulTap() {
        onTelaAzulTap?()
    }
}
