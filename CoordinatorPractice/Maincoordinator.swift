//
//  Maincoordinator.swift
//  CoordinatorPractice
//
//  Created by Rosendo Vázquez on 14/02/22.
//

import Foundation
import UIKit

class MainCoordinator: Coordinator {
    var children = [Coordinator]()
    var navigationController: UINavigationController
    
    
    init(nc: UINavigationController) {
        self.navigationController = nc
        
    }
    
    func start() {
        let vc = ViewController.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: false)
    }
    
    func goToTwo() {
        let vc = TwoViewController.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    func goToOne() {
        let vc = OneViewController.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
}
