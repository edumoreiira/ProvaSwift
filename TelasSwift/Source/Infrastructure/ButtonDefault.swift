//
//  ButtonDefault.swift
//  TelasSwift
//
//  Created by IFBIOTIC17 on 23/08/24.
//

import Foundation
import UIKit

class ButtonDefault: UIButton {
    
    init(botao: String, color: UIColor) {
        super.init(frame: .zero)
        initDefault(botao: botao, color: color)
      }
    
    
    
    private func initDefault(botao: String, color: UIColor) {
        self.setTitle(botao, for: .normal)
        self.backgroundColor = color
        self.setTitleColor(.black, for: .normal)
        self.layer.cornerRadius = 14
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
