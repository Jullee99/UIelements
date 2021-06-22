//
//  Page4VC.swift
//  UIElements
//
//  Created by DCS on 19/06/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class Page4VC: UIViewController {
    
    private let toolBar:UIToolbar = {
        let toolBar = UIToolbar()
        let cancel = UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action: #selector(handleCancle))
        let spacer = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: self, action: #selector(handleSpacer))
        let gallery = UIBarButtonItem(barButtonSystemItem: .organize, target: self, action: #selector(handleGallery))
        toolBar.items = [cancel,spacer,gallery]
        return toolBar
    }()
    
    private let imagePicker:UIImagePickerController = {
        let imagePicker = UIImagePickerController()
        imagePicker.allowsEditing = false
        return imagePicker
    }()
    
    private let myImageView:UIImageView = {
        let imageViewTrain = UIImageView()
        imageViewTrain.contentMode = .scaleAspectFill
        imageViewTrain.clipsToBounds = true
        imageViewTrain.image = UIImage(named: "04.jpg")
        return imageViewTrain
    }()
    
    private let myTextFieldfrom:UITextField = {
        let textField = UITextField()
        textField.placeholder = "Journey From"
        textField.textAlignment = .center
        textField.borderStyle = .roundedRect
        textField.backgroundColor = .orange
        return textField
    }()
    
    private let myImageView1:UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = UIImage(named: "03")
        return imageView
    }()
    
    private let myTextFieldto:UITextField = {
        let textField = UITextField()
        textField.placeholder = "Journey To"
        textField.textAlignment = .center
        textField.borderStyle = .roundedRect
        textField.backgroundColor = .orange
        return textField
    }()
    
    private let myLabel:UILabel = {
        let label = UILabel()
        label.text = "Select Your Journey Date:"
        label.textAlignment = .left
        return label
    }()
    
    
    private let myDatePicker:UIDatePicker = {
        let datePicker = UIDatePicker()
        datePicker.datePickerMode = .dateAndTime
        datePicker.timeZone = TimeZone(secondsFromGMT: 0)
        datePicker.addTarget(self, action: #selector(handleDateChange), for: .valueChanged)
        return datePicker
    }()
    
    private let myLabelsit:UILabel = {
        let label = UILabel()
        label.text = "Add Sit:"
        label.textAlignment = .left
        return label
    }()
    
    private let stepper:UIStepper = {
        let stepper = UIStepper()
        stepper.minimumValue = 0
        stepper.maximumValue = 10
        stepper.addTarget(self, action: #selector(handleStepper), for: .valueChanged)
        return stepper
    }()
    
    private let myLabelAC:UILabel = {
        let label = UILabel()
        label.text = "AC"
        label.textAlignment = .left
        return label
    }()
    
    private let myLabelNonAC:UILabel = {
        let label = UILabel()
        label.text = "Non-AC"
        label.textAlignment = .left
        return label
    }()
    
    private let mySwitch:UISwitch = {
        let switcher = UISwitch()
        switcher.addTarget(self, action: #selector(handleSwitcher), for: .valueChanged)
        return switcher
    }()
    
    private let myButtonContinue: UIButton = {
        let button = UIButton()
        button.setTitle("Continue...", for: .normal)
        button.backgroundColor = .orange
        button.layer.cornerRadius = 7
        button.addTarget(self, action: #selector(handleButtonContinue), for: .touchUpInside)
        return button
    }()
    
    
    
    private let tabBar:UITabBar = {
        let tabBar = UITabBar()
        let history = UITabBarItem(tabBarSystemItem: .history, tag: 1)
        let downloads = UITabBarItem(tabBarSystemItem: .downloads, tag: 2)
        tabBar.items = [history,downloads]
        return tabBar
    }()
    @objc func handleStepper() {
        print(stepper.value)
    }
    
    @objc func handleSpacer() {
        print("Click Spacer..")
    }
    
    @objc func  handleDateChange() {
        print(myDatePicker.date)
        
    }

    @objc func handleSwitcher() {
        print(mySwitch.isOn)
    }
    
    @objc private func handleButtonContinue() {
        print("Click...")
        let vc = Page5VC()
        navigationController?.pushViewController(vc, animated: true)
    }

    @objc private func handleCancle() {
        print("Cancle...")
        self.dismiss(animated: true)
    }
    
    @objc private func handleGallery() {
        print("Gallery...")
        imagePicker.sourceType = .photoLibrary
        DispatchQueue.main.async {
            self.present(self.imagePicker,animated: true)
    }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "About Train"
        view.backgroundColor = .white
        view.addSubview(toolBar)
        view.addSubview(myLabel)
        view.addSubview(myTextFieldfrom)
        view.addSubview(myImageView1)
        view.addSubview(myTextFieldto)
        view.addSubview(myDatePicker)
        view.addSubview(myImageView)
        view.addSubview(myLabelsit)
        view.addSubview(stepper)
        view.addSubview(mySwitch)
        view.addSubview(myLabelAC)
        view.addSubview(myLabelNonAC)
        view.addSubview(myButtonContinue)
        view.addSubview(tabBar)
        tabBar.delegate = self
        imagePicker.delegate = self
    }
    
    override func viewDidLayoutSubviews() {
        let toolbarHeight:CGFloat = view.safeAreaInsets.top + 40
        toolBar.frame = CGRect(x: 0, y: 0, width: view.width, height: toolbarHeight)
        myImageView.frame = CGRect(x: 100, y: toolBar.bottom + 20, width: view.width / 2, height: 80)
        myTextFieldfrom.frame = CGRect(x: 20, y: myImageView.bottom + 30, width: view.width - 40, height: 40)
        myImageView1.frame = CGRect(x: 170, y: myTextFieldfrom.bottom + 3, width: 40, height: 40)
        myTextFieldto.frame = CGRect(x: 20, y: myImageView1.bottom + 3, width: view.width - 40, height: 40)
        myLabel.frame = CGRect(x: 20, y: myTextFieldto.bottom + 10, width: view.width - 40, height: 40)
        myDatePicker.frame = CGRect(x: 20, y: myLabel.bottom + 5, width: view.width - 40, height: 40)
        myLabelsit.frame = CGRect(x: 20, y: myDatePicker.bottom + 20, width: view.width - 40, height: 40)
        stepper.frame = CGRect(x: 100, y: myDatePicker.bottom + 25, width: view.width - 40, height: 40)
        myLabelAC.frame = CGRect(x: 20, y: stepper.bottom + 15, width: view.width - 40, height: 40)
        mySwitch.frame = CGRect(x: 50, y: stepper.bottom + 15, width: view.width - 40, height: 40)
        myLabelNonAC.frame = CGRect(x: 110, y: stepper.bottom + 15, width: view.width - 40, height: 40)
        myButtonContinue.frame =  CGRect(x: 100, y: myLabelNonAC.bottom + 20, width: view.width / 2, height: 50)
        let tabbarHeight:CGFloat = view.safeAreaInsets.top + 44
        tabBar.frame = CGRect(x: 0, y: view.height - tabbarHeight, width: view.width, height: tabbarHeight)
        
    }
}

extension Page4VC:UITabBarDelegate {
    func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        print(item.tag)
    }
}

extension Page4VC:UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if  let selectedImage = info[.originalImage] as? UIImage {
            myImageView.image = selectedImage
        }
        picker.dismiss(animated: true)
    }
    
    func  imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true)
    }
}
