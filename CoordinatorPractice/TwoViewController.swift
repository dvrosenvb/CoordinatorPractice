//
//  TwoViewController.swift
//  CoordinatorPractice
//
//  Created by Rosendo Vázquez on 14/02/22.
//

import UIKit

class TwoViewController: UIViewController, Storyboarded {
    //MARK: Vars
    weak var coordinator:MainCoordinator?
    
    //MARK: UI Elements
    lazy var ivAtom: UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(systemName: "atom")
        iv.tintColor = ThemeManager.orange_bg
        return iv
    }()
    
    
    //MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Some stuffs #2"
        installView()
    }
    
    //MARK: Functions
    func installView(){
        view.backgroundColor = ThemeManager.blue_bg
        
        view.addSubview(ivAtom)
        ivAtom.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(120)
            make.width.height.equalTo(300)
        }
    }
}
