//
//  ViewDefault.swift
//  TelasSwift
//
//  Created by IFBIOTIC17 on 23/08/24.
//

import Foundation
import UIKit

class ViewDefault: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .blue
        setupVisualElements()
    }
    
    func setupVisualElements() {
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
