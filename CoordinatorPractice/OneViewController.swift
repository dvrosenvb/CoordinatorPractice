//
//  OneViewController.swift
//  CoordinatorPractice
//
//  Created by Rosendo Vázquez on 14/02/22.
//

import UIKit
import SnapKit

class OneViewController: UIViewController, Storyboarded {
    //MARK: Vars
    weak var coordinator:MainCoordinator?
    
    //MARK: UI Elements
    lazy var ivAtom: UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(systemName: "brain.head.profile")
        iv.tintColor = ThemeManager.orange_bg
        return iv
    }()
    
    
    //MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Some stuffs #1"
        installView()
    }
    
    //MARK: Functions
    func installView(){
        view.backgroundColor = ThemeManager.yellow_bg
        view.addSubview(ivAtom)
        ivAtom.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(120)
            make.width.height.equalTo(300)
        }
    }
}
