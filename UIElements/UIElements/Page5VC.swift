//
//  Page5VC.swift
//  UIElements
//
//  Created by DCS on 22/06/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class Page5VC: UIViewController {
    
    private let myButtonSubmit: UIButton = {
        let button = UIButton()
        button.setTitle("Submit", for: .normal)
        button.backgroundColor = .orange
        button.layer.cornerRadius = 7
        button.addTarget(self, action: #selector(handleSubmit), for: .touchUpInside)
        return button
    }()
    
    @objc func handleSubmit() {
        DispatchQueue.main.async {
            self.myActivityIndicatorView.isHidden = !self.myActivityIndicatorView.isHidden
            self.myActivityIndicatorView.isHidden ? self.myActivityIndicatorView.stopAnimating() : self.myActivityIndicatorView.startAnimating()
        }
    
    }
    
    private let myActivityIndicatorView:UIActivityIndicatorView = {
        let activityIndicatorView = UIActivityIndicatorView()
        activityIndicatorView.color = .blue
        return activityIndicatorView
    }()
    
    private let myLabelRegistration:UILabel = {
        let label = UILabel()
        label.text = "Successfully Done Registration!!!!!"
        label.textAlignment = .center
        return label
    }()
    
    private let progressView:UIProgressView = {
        let progressViwe = UIProgressView()
        progressViwe.setProgress(0.0, animated: true)
        return progressViwe
    }()
    
    
    private let myButtonFeedBack: UIButton = {
        let button = UIButton()
        button.setTitle("FeedBack", for: .normal)
        button.backgroundColor = .orange
        button.layer.cornerRadius = 7
        button.addTarget(self, action: #selector(handleFeedback), for: .touchUpInside)
        return button
    }()
    
    private let myImageViewok:UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = UIImage(named: "TRAIN_LOGO-2")
        return imageView
    }()
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        UIView.animate(withDuration: 10.0) {
            self.progressView.setProgress(1.0, animated: true)
        }
    }
    
    @objc private func handleFeedback() {
        print("Click...")
        let vc = Page6VC()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(myButtonSubmit)
        view.backgroundColor = .white
        view.addSubview(myButtonSubmit)
        view.addSubview(myActivityIndicatorView)
        view.addSubview(myLabelRegistration)
        view.addSubview(progressView)
        view.addSubview(myButtonFeedBack)
        view.addSubview(myImageViewok)
        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
        myButtonSubmit.frame = CGRect(x: 90, y: 80, width: view.width / 2, height: 50)
        myActivityIndicatorView.frame = CGRect(x: 20, y: myButtonSubmit.bottom + 20, width: view.width - 30, height: 50)
        myLabelRegistration.frame = CGRect(x: 20, y: myActivityIndicatorView.bottom + 10, width: view.width - 40, height: 40)
        myImageViewok.frame = CGRect(x: 70, y: myLabelRegistration.bottom + 20, width: view.width / 2, height: 160)
        progressView.frame = CGRect(x: 20, y: myImageViewok.bottom + 50, width: view.width - 40, height: 40)
        myButtonFeedBack.frame = CGRect(x: 90, y: progressView.bottom + 90, width: view.width / 2, height: 50)
    }
    
}
