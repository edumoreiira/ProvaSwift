//
//  TelaAzulCoordinator.swift
//  TelasSwift
//
//  Created by IFBIOTIC17 on 23/08/24.
//

import Foundation

import UIKit
class TelaVerdeCoordinator: Coordinator {
    
    var navigationController: UINavigationController
    
    init (navigationController: UINavigationController ) {
        self.navigationController = navigationController
        
    }
    
    func start() {
        let viewController = TelaVerdeViewController()
        self.navigationController.pushViewController(viewController, animated: true)
        
        viewController.onTelaAzulTap = {
            self.goToTelaAzul()
        }
        
        viewController.onTelaVermelhaTap = {
            self.goToTelaVermelha()
        }
    }
    
    func goToTelaAzul() {
        self.navigationController.popViewController(animated: true)
    }
    
    func goToTelaVermelha() {
        let coordinator = TelaVermelhaCoordinator(navigationController: navigationController)
        coordinator.start()
    }
}
