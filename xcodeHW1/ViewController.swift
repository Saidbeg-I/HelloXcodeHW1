//
//  ViewController.swift
//  xcodeHW1
//
//  Created by 1 on 26.07.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var gratInclusionButton: UIButton!
    
    @IBOutlet var greenColorView: UIView!
    @IBOutlet var yellowColorView: UIView!
    @IBOutlet var redColorView: UIView!
    var sumPressedButton = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redColorView.alpha = 0.5
        yellowColorView.alpha = 0.5
        greenColorView.alpha = 0.5
        
        
        redColorView.layer.cornerRadius = 55
        yellowColorView.layer.cornerRadius = 55
        greenColorView.layer.cornerRadius = 55
        
        gratInclusionButton.layer.cornerRadius = 20
    }

    @IBAction func includesColorPressed() {
        if sumPressedButton == 1 {
            gratInclusionButton.setTitle("Next", for: .normal)
            redColorView.alpha = 1
            sumPressedButton += 1
        } else if redColorView.alpha == 1  {
            redColorView.alpha = 0.5
            yellowColorView.alpha = 1
        } else if yellowColorView.alpha == 1 {
            yellowColorView.alpha = 0.5
            greenColorView.alpha = 1
        } else if greenColorView.alpha == 1 {
            greenColorView.alpha = 0.5
            redColorView.alpha = 1
        }
       
    }
        
       /* switch sumPressedButton {
        case 9 :
            gratInclusionButton.setTitle("Next", for: .normal)
            redColorView.alpha = 1
            sumPressedButton -= 1
        case 8 :
            redColorView.alpha = 0.5
            yellowColorView.alpha = 1
            sumPressedButton -= 1
        case 7:
            yellowColorView.alpha = 0.5
            greenColorView.alpha = 1
            sumPressedButton -= 1
        case 6:
            redColorView.alpha = 1
            greenColorView.alpha = 0.5
            sumPressedButton -= 1
        case 5:
            redColorView.alpha = 0.5
            yellowColorView.alpha = 1
            sumPressedButton -= 1
        case 4:
            yellowColorView.alpha = 0.5
            greenColorView.alpha = 1
            sumPressedButton -= 1
        case 3:
            greenColorView.alpha = 0.5
            redColorView.alpha = 1
            sumPressedButton -= 1
        case 2:
            redColorView.alpha = 0.5
            yellowColorView.alpha = 1
            sumPressedButton -= 1
        default:
            greenColorView.alpha = 1
            yellowColorView.alpha = 0.5
            sumPressedButton -= 1
        }
    } Извините , решил оставить результат предыдущщих усилий :)
        а новая пришла в голову после сдачи ДЗ.но вы же сказали можно доработать),
        по моему идеально ) не на радуюсь :)
        знаю ошибок миллион, возможно было б правильно отработать опционалы 
   */
}
