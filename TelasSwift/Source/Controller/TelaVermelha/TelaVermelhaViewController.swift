//
//  TelaAzulViewController.swift
//  TelasSwift
//
//  Created by IFBIOTIC17 on 23/08/24.
//

import Foundation
import UIKit

class TelaVermelhaViewController: ViewControllerDefault {
    
    var onTelaVerdeTap: (() -> Void)?
    var onTelaAzulTap: (() -> Void)?
    
    lazy var telaVermelhaView: TelaVermelhaView = {
        let telaVermelhaView = TelaVermelhaView()
        
        telaVermelhaView.onTelaVerdeTap = {
            self.onTelaVerdeTap?()
        }
        telaVermelhaView.onTelaAzulTap = {
            self.onTelaAzulTap?()
        }
        
        return telaVermelhaView
    }()
    
    override func loadView(){
        self.view = telaVermelhaView
    }
    
    // é executado quando está carregando
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Tela Vermelha"
    }
}
