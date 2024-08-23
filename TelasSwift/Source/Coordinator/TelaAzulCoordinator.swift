//
//  TelaAzulCoordinator.swift
//  TelasSwift
//
//  Created by IFBIOTIC17 on 23/08/24.
//

import Foundation

import UIKit
class TelaAzulCoordinator: Coordinator {
    
    var navigationController: UINavigationController
    
    init (navigationController: UINavigationController ) {
        self.navigationController = navigationController
        
    }
    
    func start() {
        let viewController = TelaAzulViewController()
        self.navigationController.pushViewController(viewController, animated: true)
        
        viewController.onTelaVerdeTap = {
            self.goToTelaVerde()
        }
    }
    
    func goToTelaVerde() {
        let coordinator = TelaVerdeCoordinator(navigationController: navigationController)
        coordinator.start()
    }
    
}
