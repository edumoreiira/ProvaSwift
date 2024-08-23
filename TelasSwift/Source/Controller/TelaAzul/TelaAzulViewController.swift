//
//  TelaAzulViewController.swift
//  TelasSwift
//
//  Created by IFBIOTIC17 on 23/08/24.
//

import Foundation
import UIKit

class TelaAzulViewController: ViewControllerDefault {
    
    var onTelaVerdeTap: (() -> Void)?
    
    lazy var telaAzulView: TelaAzulView = {
        let telaAzulView = TelaAzulView()
        telaAzulView.onTelaVerdeTap = {
            self.onTelaVerdeTap?()
        }
        
        return telaAzulView
    }()
    
    override func loadView(){
        self.view = telaAzulView
    }
    
    // é executado quando está carregando
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Tela Azul"
    }
}
