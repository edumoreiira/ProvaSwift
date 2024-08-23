//
//  TelaAzulView.swift
//  TelasSwift
//
//  Created by IFBIOTIC17 on 23/08/24.
//

import Foundation
import UIKit

class TelaAzulView: ViewDefault {
    
    var onTelaVerdeTap: (()->Void)?
    
    var buttonTelaVerde = ButtonDefault(botao: "Tela verde", color: .green)
    
    override func setupVisualElements() {
        super.setupVisualElements()
        
        
        self.addSubview(buttonTelaVerde)
        
        buttonTelaVerde.addTarget(self, action: #selector(telaVerdeTap), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            buttonTelaVerde.widthAnchor.constraint(equalToConstant: 374),
            buttonTelaVerde.heightAnchor.constraint(equalToConstant: 60),
            buttonTelaVerde.topAnchor.constraint(equalTo: self.topAnchor, constant: 228),
            buttonTelaVerde.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 57),
            buttonTelaVerde.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -57),
        ])
    }
    
    @objc
    private func telaVerdeTap() {
        onTelaVerdeTap?()
    }
}
