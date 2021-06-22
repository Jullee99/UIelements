//
//  Page6VC.swift
//  UIElements
//
//  Created by DCS on 22/06/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class Page6VC: UIViewController {
    
    private let myLabelChooselbl:UILabel = {
        let label = UILabel()
        label.text = "Share Your FeedBack With Us"
        label.textAlignment = . center
        return label
    }()
    
    private let myLabelChoose:UILabel = {
        let label = UILabel()
        label.text = "Pick One Choice:"
        label.textAlignment = . left
        return label
    }()
    
    private let myLabelSlider:UILabel = {
        let label = UILabel()
        label.text = "Give Us to Rate :"
        label.textAlignment = . left
        return label
    }()
    
    private let mySlider:UISlider = {
        let slider = UISlider()
        slider.minimumValue = 0
        slider.maximumValue = 10
        slider.addTarget(self, action: #selector(handleSlider), for: .valueChanged)
        return slider
    }()
    
    private let myTextView:UITextView = {
        let textView = UITextView()
        textView.text = "Enter Your Message Here...."
        textView.textAlignment = .center
        textView.backgroundColor = .orange
        return textView
    }()
    private let myButtonOk: UIButton = {
        let button = UIButton()
        button.setTitle("Ok", for: .normal)
        button.backgroundColor = .orange
        button.layer.cornerRadius = 7
        return button
    }()
    
    let myPickerView = UIPickerView()
    private let pickerData = ["Excellent","Too Good","Good","Average","Worst"]
    

    @objc func handleSlider() {
        print(mySlider.value)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "FeedBack"
        view.addSubview(myLabelChooselbl)
        view.addSubview(myLabelChoose)
        view.addSubview(myPickerView)
        myPickerView.delegate = self
        myPickerView.dataSource = self
        view.addSubview(myLabelSlider)
        view.addSubview(mySlider)
        view.addSubview(myTextView)
        view.addSubview(myButtonOk)

        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
        myLabelChooselbl.frame = CGRect(x: 20, y: 40, width: view.width - 40, height: 40)
        myLabelChoose.frame = CGRect(x: 20, y: myLabelChooselbl.bottom + 20, width: view.width - 40, height: 40)
        myPickerView.frame = CGRect(x: 60, y: myLabelChooselbl.bottom + 20, width: view.width - 60, height: 40)
        myLabelSlider.frame = CGRect(x: 20, y: myPickerView.bottom + 20, width: view.width - 40, height: 40)
        mySlider.frame = CGRect(x: 20, y: myLabelSlider.bottom + 10, width: view.width - 40, height: 40)
        myTextView.frame = CGRect(x: 20, y: mySlider.bottom + 40, width: view.width - 40, height: 60)
        myButtonOk.frame = CGRect(x: 90, y: myTextView.bottom + 50, width: view.width / 2, height: 50)
    }

}

extension Page6VC: UIPickerViewDataSource,UIPickerViewDelegate {
    func numberOfComponents(in pickerView:UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
         print(pickerData[row])
    }
    }

