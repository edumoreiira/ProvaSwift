//
//  TelaAzulViewController.swift
//  TelasSwift
//
//  Created by IFBIOTIC17 on 23/08/24.
//

import Foundation
import UIKit

class TelaVerdeViewController: ViewControllerDefault {
    
    var onTelaVermelhaTap: (() -> Void)?
    var onTelaAzulTap: (() -> Void)?
    
    lazy var telaVerdeView: TelaVerdeView = {
        let telaVerdeView = TelaVerdeView()
        telaVerdeView.onTelaVermelhaTap = {
            self.onTelaVermelhaTap?()
        }
        telaVerdeView.onTelaAzulTap = {
            self.onTelaAzulTap?()
        }
        
        return telaVerdeView
    }()
    
    override func loadView(){
        self.view = telaVerdeView
    }
    
    // é executado quando está carregando
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Tela verde"
    }
}
