//
//  ViewController.swift
//  Odev5
//
//  Created by Berkay Özbaba on 3.05.2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var resultLabel: UILabel!
    
    var number1 = 0.0
    var number2 = 0.0
    var result: Double!
    
    var isPlusActive = false
    var isMinusActive = false
    var isMultipleActive = false
    var isDivisionActive = false
    var equalClicked = false
    
    @IBOutlet var plusButton: UIButton!
    
    @IBOutlet var minusButton: UIButton!
    
    @IBOutlet var multipleButton: UIButton!
    
    @IBOutlet var divisionButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func ACButtonClicked(_ sender: Any) {
        isPlusActive = false
        isMinusActive = false
        isDivisionActive = false
        isMultipleActive = false
        plusButton.tintColor = UIColor.systemOrange
        plusButton.configuration?.cornerStyle = .small
        divisionButton.tintColor = UIColor.systemOrange
        plusButton.configuration?.cornerStyle = .small
        multipleButton.tintColor = UIColor.systemOrange
        plusButton.configuration?.cornerStyle = .small
        minusButton.tintColor = UIColor.systemOrange
        plusButton.configuration?.cornerStyle = .small
        resultLabel.text = "0"
        number1 = 0
        number2 = 0
    }
    
    @IBAction func divisonButtonClicked(_ sender: Any) {
        if isPlusActive == false && isMinusActive == false && isDivisionActive == false && isMultipleActive == false{
            number1 = Double(resultLabel.text!)!
            isDivisionActive = true
            isPlusActive = false
            isMinusActive = false
            isMultipleActive = false
            divisionButton.tintColor = UIColor.brown
            plusButton.configuration?.cornerStyle = .small
            resultLabel.text = "0"
            
        }
    }
    
    
    @IBAction func multipleButtonClicked(_ sender: Any) {
        if isPlusActive == false && isMinusActive == false && isDivisionActive == false && isMultipleActive == false{
            number1 = Double(resultLabel.text!)!
            isMultipleActive = true
            isPlusActive = false
            isMinusActive = false
            isDivisionActive = false
            multipleButton.tintColor = UIColor.brown
            plusButton.configuration?.cornerStyle = .small
            resultLabel.text = "0"
            
        }
    }
    
    @IBAction func minusButtonClicked(_ sender: Any) {
        if isPlusActive == false && isMinusActive == false && isDivisionActive == false && isMultipleActive == false{
            number1 = Double(resultLabel.text!)!
            isMinusActive = true
            isPlusActive = false
            isDivisionActive = false
            isMultipleActive = false
            minusButton.tintColor = UIColor.brown
            plusButton.configuration?.cornerStyle = .small
            resultLabel.text = "0"
            
        }
    }
    
    @IBAction func plusButtonClicked(_ sender: Any) {
        if isPlusActive == false && isMinusActive == false && isDivisionActive == false && isMultipleActive == false{
            number1 = Double(resultLabel.text!)!
            isPlusActive = true
            plusButton.tintColor = UIColor.brown
            plusButton.configuration?.cornerStyle = .small
            resultLabel.text = "0"
            
        }
    }
    
    @IBAction func dotButtonClicked(_ sender: Any) {
        if let oldResult = resultLabel.text {
               if !oldResult.contains(".") {
                   let newResult = "\(oldResult)."
                   resultLabel.text = newResult
                   equalClicked = false
               }
           }
    }
    
    @IBAction func changePlusMinusButtonClicked(_ sender: Any) {
        if let oldResult = Double(resultLabel.text!){
            let newResult = oldResult * -1
            if newResult == Double(Int(newResult)){
                resultLabel.text = String(Int(newResult))
            }else{
                let formattedResult = String(format: "%.6f", newResult)
                resultLabel.text = String(formattedResult)
            }
        }
    }
    
    @IBAction func percentButtonClicked(_ sender: Any) {
        if let oldResult = Double(resultLabel.text!){
            let newResult = oldResult / 100
            if newResult == Double(Int(newResult)){
                resultLabel.text = String(Int(newResult))
            }else{
                let formattedResult = String(format: "%.5f", newResult)
                resultLabel.text = String(formattedResult)
            }
        }
    }
    
    
    @IBAction func equalButtonClicked(_ sender: Any) {
        if isPlusActive == true{
            number2 = Double(resultLabel.text!)!
            result = number1 + number2
            if result == Double(Int(result)){
                resultLabel.text = String(Int(result))
            }else{
                let formattedResult = String(format: "%.2f", result)
                resultLabel.text = String(formattedResult)
            }
            isPlusActive = false
            plusButton.tintColor = UIColor.systemOrange
            plusButton.configuration?.cornerStyle = .small
            equalClicked = true
        }
        if isMinusActive == true{
            number2 = Double(resultLabel.text!)!
            result = number1 - number2
            if result == Double(Int(result)){
                resultLabel.text = String(Int(result))
            }else{
                let formattedResult = String(format: "%.2f", result)
                resultLabel.text = String(formattedResult)
            }
            isMinusActive = false
            minusButton.tintColor = UIColor.systemOrange
            minusButton.configuration?.cornerStyle = .small
            equalClicked = true
        }
        if isMultipleActive == true{
            number2 = Double(resultLabel.text!)!
            result = number1 * number2
            if result == Double(Int(result)){
                resultLabel.text = String(Int(result))
            }else{
                let formattedResult = String(format: "%.2f", result)
                resultLabel.text = String(formattedResult)
            }
            isMultipleActive = false
            multipleButton.tintColor = UIColor.systemOrange
            multipleButton.configuration?.cornerStyle = .small
            equalClicked = true
        }
        if isDivisionActive == true{
            number2 = Double(resultLabel.text!)!
            if number2 != 0{
                result = Double(number1 / number2)
                if result == Double(Int(result)){
                    resultLabel.text = String(Int(result))
                }else{
                    let formattedResult = String(format: "%.2f", result)
                    resultLabel.text = String(formattedResult)
                }
                isDivisionActive = false
                divisionButton.tintColor = UIColor.systemOrange
                divisionButton.configuration?.cornerStyle = .small
                equalClicked = true
            }else{
                isPlusActive = false
                isMinusActive = false
                isDivisionActive = false
                isMultipleActive = false
                plusButton.tintColor = UIColor.systemOrange
                plusButton.configuration?.cornerStyle = .small
                divisionButton.tintColor = UIColor.systemOrange
                plusButton.configuration?.cornerStyle = .small
                multipleButton.tintColor = UIColor.systemOrange
                plusButton.configuration?.cornerStyle = .small
                minusButton.tintColor = UIColor.systemOrange
                plusButton.configuration?.cornerStyle = .small
                resultLabel.text = "0"
                number1 = 0
                number2 = 0
            }
        }
    }
    
    @IBAction func zeroButtonClicked(_ sender: Any) {
        if resultLabel.text == "0" || equalClicked == true{
            resultLabel.text = "0"
            equalClicked = false
        }else{
            let oldResult = resultLabel.text
            let newResult = "\(oldResult!)0"
            resultLabel.text = newResult
        }
    }
    
    @IBAction func oneButtonClicked(_ sender: Any) {
        if resultLabel.text == "0" || equalClicked == true{
            resultLabel.text = "1"
            equalClicked = false
        }else{
            let oldResult = resultLabel.text
            let newResult = "\(oldResult!)1"
            resultLabel.text = newResult
        }
    }
    
    @IBAction func twoButtonClicked(_ sender: Any) {
        if resultLabel.text == "0" || equalClicked == true{
            resultLabel.text = "2"
            equalClicked = false
        }else{
            let oldResult = resultLabel.text
            let newResult = "\(oldResult!)2"
            resultLabel.text = newResult
        }
    }
    
    @IBAction func thereeButtonClicked(_ sender: Any) {
        if resultLabel.text == "0" || equalClicked == true{
            resultLabel.text = "3"
            equalClicked = false
        }else{
            let oldResult = resultLabel.text
            let newResult = "\(oldResult!)3"
            resultLabel.text = newResult
        }
    }
    
    @IBAction func fourButtonClicked(_ sender: Any) {
        if resultLabel.text == "0" || equalClicked == true{
            resultLabel.text = "4"
            equalClicked = false
        }else{
            let oldResult = resultLabel.text
            let newResult = "\(oldResult!)4"
            resultLabel.text = newResult
        }
    }
    
    @IBAction func fiveButtonClicked(_ sender: Any) {
        if resultLabel.text == "0" || equalClicked == true{
            resultLabel.text = "5"
            equalClicked = false
        }else{
            let oldResult = resultLabel.text
            let newResult = "\(oldResult!)5"
            resultLabel.text = newResult
        }
    }
    
    @IBAction func sixButtonClicked(_ sender: Any) {
        if resultLabel.text == "0" || equalClicked == true{
            resultLabel.text = "6"
            equalClicked = false
        }else{
            let oldResult = resultLabel.text
            let newResult = "\(oldResult!)6"
            resultLabel.text = newResult
        }
    }
    
    @IBAction func sevenButtonClicked(_ sender: Any) {
        if resultLabel.text == "0" || equalClicked == true{
            resultLabel.text = "7"
            equalClicked = false
        }else{
            let oldResult = resultLabel.text
            let newResult = "\(oldResult!)7"
            resultLabel.text = newResult
        }
    }
    
    @IBAction func eightButtonClicked(_ sender: Any) {
        if resultLabel.text == "0" || equalClicked == true{
            resultLabel.text = "8"
            equalClicked = false
        }else{
            let oldResult = resultLabel.text
            let newResult = "\(oldResult!)8"
            resultLabel.text = newResult
        }
    }
    
    @IBAction func nineButtonClicked(_ sender: Any) {
        if resultLabel.text == "0" || equalClicked == true{
            resultLabel.text = "9"
            equalClicked = false
        }else{
            let oldResult = resultLabel.text
            let newResult = "\(oldResult!)9"
            resultLabel.text = newResult
        }
    }
    
}

