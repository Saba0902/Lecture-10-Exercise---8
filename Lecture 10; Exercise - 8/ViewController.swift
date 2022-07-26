//
//  ViewController.swift
//  Lecture 10; Exercise - 8
//
//  Created by saba popkhadze on 25.07.22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var switcherOut: UISwitch!
    @IBOutlet weak var labelSwitch: UILabel!
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var textField3: UITextField!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var textField4: UITextField!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var textField5: UITextField!
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var cleanButton: UIButton!
    @IBOutlet weak var labelOut: UILabel!
    @IBOutlet weak var sliderOut: UISlider!
    @IBOutlet weak var labelAverage: UILabel!
    @IBOutlet weak var averageOut: UIButton!
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        labelSwitch.text = "შეავსეთ ყველა ველი"
        labelOut.text = "\(Int(sliderOut.minimumValue)) - \(Int(sliderOut.maximumValue))"
        cleanButton.tintColor = .red
        labelAverage.text = "საშუალო რიცხვი"
    }
    
    func randomNumber() -> String {
        let randomNum = Int.random(in: Int(sliderOut.minimumValue)...Int(sliderOut.maximumValue))
        return String(randomNum)
    }
//    @IBAction func switcherAction(_ sender: UIButton) {
//        if switcherOut.isOn {
//
//        }
//    }
    @IBAction func button1Random(_ sender: UIButton) {
        textField1.text = randomNumber()
        textField1.backgroundColor = .white
    }
    @IBAction func button2Random(_ sender: UIButton) {
        textField2.text = randomNumber()
        textField2.backgroundColor = .white
    }
    @IBAction func button3Random(_ sender: UIButton) {
        textField3.text = randomNumber()
        textField3.backgroundColor = .white
    }
    @IBAction func button4Random(_ sender: UIButton) {
        textField4.text = randomNumber()
        textField4.backgroundColor = .white
    }
    @IBAction func button5Random(_ sender: UIButton) {
        textField5.text = randomNumber()
        textField5.backgroundColor = .white
    }
    @IBAction func cleanAction(_ sender: UIButton) {
        textField1.text = ""
        textField1.backgroundColor = .white
        textField2.text = ""
        textField2.backgroundColor = .white
        textField3.text = ""
        textField3.backgroundColor = .white
        textField4.text = ""
        textField4.backgroundColor = .white
        textField5.text = ""
        textField5.backgroundColor = .white
        labelAverage.text = "საშუალო რიცხვი"
        
    }
    @IBAction func sliderAction(_ sender: UISlider) {
        let labelOutNumber = sender.value
        labelOut.text = "\(Int(sliderOut.minimumValue)) - \(Int(labelOutNumber))"
    }
    
    
    func average(textFields: [UITextField]) -> Double {
        var total: Int = 0
        for field in textFields {
            total += Int(field.text ?? "0") ?? 0
        }
        return Double(total) / Double(textFields.count)
    }

    @IBAction func averageClicked(_ sender: UIButton) {
        var textFields: [UITextField] = []
        if !(textField1.text?.isEmpty ?? true) {
            textFields.append(textField1)
        }
        if !(textField2.text?.isEmpty ?? true) {
            textFields.append(textField2)
        }
        if !(textField3.text?.isEmpty ?? true) {
            textFields.append(textField3)
        }
        if !(textField4.text?.isEmpty ?? true) {
            textFields.append(textField4)
        }
        if !(textField5.text?.isEmpty ?? true) {
            textFields.append(textField5)
        }
        if textFields.isEmpty {
            labelAverage.text = "შეავსე მინიმუმ 1 ველი"
            textField1.backgroundColor = .red
            textField2.backgroundColor = .red
            textField3.backgroundColor = .red
            textField4.backgroundColor = .red
            textField5.backgroundColor = .red
        } else {
            labelAverage.text = "\(average(textFields: textFields))"
        }
    }
    
}

