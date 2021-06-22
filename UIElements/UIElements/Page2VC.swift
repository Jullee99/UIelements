//
//  Page2VC.swift
//  UIElements
//
//  Created by DCS on 16/06/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class Page2VC: UIViewController {
    
    private let myLabelemail:UILabel = {
        let label = UILabel()
        label.text = "Email:"
        label.textAlignment = .left
        return label
    }()
    
    private let myTextFieldemail:UITextField = {
        let textField = UITextField()
        textField.placeholder = "Enter Your Email"
        textField.textAlignment = .left
        textField.borderStyle = .roundedRect
        return textField
    }()
    
    private let myLabelpwd:UILabel = {
        let label = UILabel()
        label.text = "Password:"
        label.textAlignment = .left
        return label
    }()
    
    private let myTextFieldpwd:UITextField = {
        let textField = UITextField()
        textField.placeholder = "Enter Your Password"
        textField.textAlignment = .left
        textField.borderStyle = .roundedRect
        textField.isSecureTextEntry = true
        return textField
    }()
    
    
    private let myButtonLogin: UIButton = {
        let button = UIButton()
        button.setTitle("Login", for: .normal)
        button.backgroundColor = .orange
        button.layer.cornerRadius = 7
        return button
    }()
    
    private let myLabelOR:UILabel = {
        let label = UILabel()
        label.text = "OR"
        label.textAlignment = .center
        return label
    }()
    
    private let myButtonRegister: UIButton = {
        let button = UIButton()
        button.setTitle("Register", for: .normal)
        button.backgroundColor = .orange
        button.layer.cornerRadius = 7
        button.addTarget(self, action: #selector(handleButtonRegister), for: .touchUpInside)
        return button
    }()
    
    @objc private func handleButtonRegister() {
        print("Click...")
        let vc = Page3VC()
        navigationController?.pushViewController(vc, animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Login"
        view.backgroundColor = .white
        view.addSubview(myLabelemail)
        view.addSubview(myTextFieldemail)
        view.addSubview(myLabelpwd)
        view.addSubview(myTextFieldpwd)
        view.addSubview(myButtonLogin)
        view.addSubview(myLabelOR)
        view.addSubview(myButtonRegister)
        
    }
    
    override func viewDidLayoutSubviews() {
        myLabelemail.frame = CGRect(x:20 , y: 80, width: view.width - 40, height: 40)
        myTextFieldemail.frame = CGRect(x: 20, y: myLabelemail.bottom + 10, width: view.width - 40, height: 40)
        myLabelpwd.frame = CGRect(x: 20, y: myTextFieldemail.bottom + 20, width: view.width - 40, height: 40)
        myTextFieldpwd.frame = CGRect(x: 20, y: myLabelpwd.bottom + 10, width: view.width - 40, height: 40)
        myButtonLogin.frame = CGRect(x: 60, y: myTextFieldpwd.bottom + 30, width: view.width - 120, height: 50)
        myLabelOR.frame = CGRect(x: 20, y: myButtonLogin.bottom + 10, width: view.width - 40, height: 40)
        myButtonRegister.frame = CGRect(x: 60, y: myLabelOR.bottom + 10, width: view.width - 120, height: 50)
    }

}
