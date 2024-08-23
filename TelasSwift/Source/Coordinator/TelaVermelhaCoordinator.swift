//
//  TelaAzulCoordinator.swift
//  TelasSwift
//
//  Created by IFBIOTIC17 on 23/08/24.
//

import Foundation

import UIKit
class TelaVermelhaCoordinator: Coordinator {
    
    var navigationController: UINavigationController
    
    
    init (navigationController: UINavigationController ) {
        self.navigationController = navigationController
        
    }
    
    func start() {
        let viewController = TelaVermelhaViewController()
        self.navigationController.pushViewController(viewController, animated: true)
        
        viewController.onTelaAzulTap = {
            self.goToTelaAzul()
        }
        
        viewController.onTelaVerdeTap = {
            self.goToTelaVerde()
        }
    }
    
    func goToTelaAzul() {
        
        let viewControllers = self.navigationController.viewControllers
        
        
        self.navigationController.popToViewController(viewControllers[0], animated: true)
    }
    
    func goToTelaVerde() {
        self.navigationController.popViewController(animated: true)
    }
    
}
