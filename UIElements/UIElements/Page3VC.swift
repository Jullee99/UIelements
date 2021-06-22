//
//  Page3VC.swift
//  UIElements
//
//  Created by DCS on 18/06/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class Page3VC: UIViewController {
    
    private let myTextFieldName:UITextField = {
        let textField = UITextField()
        textField.placeholder = "Enter Your Name"
        textField.textAlignment = .center
        textField.borderStyle = .roundedRect
        textField.backgroundColor = .orange
        return textField
    }()
    
    private let myTextFieldEmail:UITextField = {
        let textField = UITextField()
        textField.placeholder = "Enter Your Email"
        textField.textAlignment = .center
        textField.borderStyle = .roundedRect
        textField.backgroundColor = .orange
        return textField
    }()
    
    private let myTextFieldPWD:UITextField = {
        let textField = UITextField()
        textField.placeholder = "Enter Your Password"
        textField.textAlignment = .center
        textField.borderStyle = .roundedRect
        textField.backgroundColor = .orange
        textField.isSecureTextEntry = true
        return textField
    }()
    
    private let myTextFieldCpwd:UITextField = {
        let textField = UITextField()
        textField.placeholder = "Enter Your Confirm Password"
        textField.textAlignment = .center
        textField.borderStyle = .roundedRect
        textField.backgroundColor = .orange
        textField.isSecureTextEntry = true
        return textField
    }()

    private let myButtonnext: UIButton = {
        let button = UIButton()
        button.setTitle("Next", for: .normal)
        button.backgroundColor = .orange
        button.layer.cornerRadius = 7
        button.addTarget(self, action: #selector(handleButtonNext), for: .touchUpInside)
        return button
    }()
    
    private let mySegmentedControl:UISegmentedControl = {
        let gender = UISegmentedControl()
        gender.insertSegment(withTitle: "Female", at: 0, animated: true)
        gender.insertSegment(withTitle: "Male", at: 1, animated: true)
        gender.selectedSegmentIndex = 0
        gender.backgroundColor = .orange
        gender.addTarget(self, action: #selector(handleSegmentControl), for: .valueChanged)
        return gender
        
    }()
    
    @objc private func handleButtonNext() {
        let vc = Page4VC()
        let nav = UINavigationController(rootViewController: vc)
        nav.modalPresentationStyle = .fullScreen
        nav.setNavigationBarHidden(true, animated: false)
        present(nav,animated: true)
    }
    
    @objc func handleSegmentControl() {
        print(mySegmentedControl.selectedSegmentIndex)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Register Your Self"
        view.backgroundColor = .white
        view.addSubview(myTextFieldName)
        view.addSubview(myTextFieldEmail)
        view.addSubview(myTextFieldPWD)
        view.addSubview(myTextFieldCpwd)
        view.addSubview(myButtonnext)
        view.addSubview(mySegmentedControl)
    }
    
    override func viewDidLayoutSubviews() {
        myTextFieldName.frame = CGRect(x: 20, y: 80, width: view.width - 40, height: 40)
        myTextFieldEmail.frame = CGRect(x: 20, y: myTextFieldName.bottom + 40, width: view.width - 40, height: 40)
        myTextFieldPWD.frame = CGRect(x: 20, y: myTextFieldEmail.bottom + 40, width: view.width - 40, height: 40)
        myTextFieldCpwd.frame = CGRect(x: 20, y: myTextFieldPWD.bottom + 40, width: view.width - 40, height: 40)
        mySegmentedControl.frame = CGRect(x: 20, y: myTextFieldCpwd.bottom + 40, width: view.width - 40, height: 40)
        myButtonnext.frame = CGRect(x: 100, y: mySegmentedControl.bottom + 70, width: view.width / 2, height: 40)
    }

}
