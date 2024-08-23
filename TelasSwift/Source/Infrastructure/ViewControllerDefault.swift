//
//  ViewControllerDefault.swift
//  TelasSwift
//
//  Created by IFBIOTIC17 on 23/08/24.
//

import Foundation
import UIKit

class ViewControllerDefault: ViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        self.navigationController?.navigationBar.prefersLargeTitles=true
        self.navigationItem.setHidesBackButton(true, animated: false)
    }
    
    @objc
    func hideKeyboardByTappingoutSide () {
        self.view.endEditing(true)
    }
}
