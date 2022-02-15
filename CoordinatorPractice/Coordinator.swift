//
//  Coordinator.swift
//  CoordinatorPractice
//
//  Created by Rosendo Vázquez on 14/02/22.
//

import Foundation
import UIKit

protocol Coordinator {
    var navigationController: UINavigationController { get set }
    var children: [Coordinator] { get set }

    func start()
}
