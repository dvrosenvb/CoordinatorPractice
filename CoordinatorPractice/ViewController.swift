//
//  ViewController.swift
//  CoordinatorPractice
//
//  Created by Rosendo Vázquez on 14/02/22.
//

import UIKit
import SnapKit

class ViewController: UIViewController, Storyboarded {
    
    //MARK: Vars
    var coordinator:MainCoordinator?
        
    //MARK: UI Elements
    lazy var btnOne: UIButton = {
        let btn = UIButton()
        btn.layer.backgroundColor = ThemeManager.yellow_bg.cgColor
        btn.setTitleColor(ThemeManager.blue_bg, for: .normal)
        btn.layer.cornerRadius = 24
        btn.setTitle("Go #1", for: .normal)
        return btn
    }()
    
    lazy var btnTwo: UIButton = {
        let btn = UIButton()
        btn.layer.backgroundColor = ThemeManager.blue_bg.cgColor
        btn.setTitleColor(ThemeManager.orange_bg, for: .normal)
        btn.layer.cornerRadius = 24
        btn.setTitle("Go #2", for: .normal)
        return btn
    }()
    
    lazy var lblTitle: UILabel = {
        let lbl = UILabel()
        lbl.text = "Coordinator"
        lbl.textAlignment = .center
        lbl.font = UIFont(name: "Helvetica", size: 22)
        return lbl
    }()
    
    lazy var lblSubtitle: UILabel = {
        let lbl = UILabel()
        lbl.text = "@dvrosenvb"
        lbl.textAlignment = .center
        lbl.font = UIFont(name: "Helvetica", size: 11)
        lbl.textColor = ThemeManager.blue_bg
        return lbl
    }()
    
    
    //MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        installView()
        
    }
    
    
    
    //MARK: LocalFunctions
    func installView(){
        view.backgroundColor = ThemeManager.gray_bg
        
        view.addSubview(btnOne)
        btnOne.snp.makeConstraints { make in
            make.width.equalTo(230)
            make.height.equalTo(48)
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(260)
        }
        
        view.addSubview(btnTwo)
        btnTwo.snp.makeConstraints { make in
            make.width.equalTo(230)
            make.height.equalTo(48)
            make.centerX.equalToSuperview()
            make.top.equalTo(btnOne.snp.bottom).offset(52)
        }
        
        view.addSubview(lblTitle)
        lblTitle.snp.makeConstraints { make in
            make.width.equalTo(230)
            make.height.equalTo(46)
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(180)
        }
        
        view.addSubview(lblSubtitle)
        lblSubtitle.snp.makeConstraints { make in
            make.width.equalTo(230)
            make.height.equalTo(46)
            make.centerX.equalToSuperview()
            make.top.equalTo(lblTitle.snp.bottom).offset(-24)
        }

        btnOne.addTarget(self, action: #selector(tapBtnOne), for: .touchUpInside)
        btnTwo.addTarget(self, action: #selector(tapBtnTwo), for: .touchUpInside)
    }

    
    @objc func tapBtnOne(){
        coordinator?.goToOne()
    }
    
    @objc func tapBtnTwo(){
       
        
        coordinator?.goToTwo()
    }
    

}

