//
//  ViewController.swift
//  UIElements
//
//  Created by DCS on 16/06/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private let myImageView:UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = UIImage(named: "1")
        return imageView
    }()
    
    private let myButton: UIButton = {
        let button = UIButton()
        button.setTitle("Book Your Train Ticket", for: .normal)
        button.backgroundColor = .orange
        button.layer.cornerRadius = 7
        button.addTarget(self, action: #selector(handleButton), for: .touchUpInside)
        return button
    }()
    
    @objc private func handleButton() {
        print("Click...")
        let vc = Page2VC()
        navigationController?.pushViewController(vc, animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(myImageView)
        view.addSubview(myButton)
        
    }
    
    override func viewDidLayoutSubviews() {
        let screenSize : CGRect = UIScreen.main.bounds
        myButton.frame = CGRect(x: 40,y : (view.height / 2) - 60,width: view.width - 80,height: 60)
         myImageView.frame = CGRect(x: 40, y: (view.height / 2)  - 30,width: view.width - 80,height: screenSize.height - 60)
       
    }
    

}

