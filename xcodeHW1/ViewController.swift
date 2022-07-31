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
    var sumPressedButton = 9
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redColorView.alpha = 0.5
        yellowColorView.alpha = 0.5
        greenColorView.alpha = 0.5
        
        
        redColorView.layer.cornerRadius = 60
        yellowColorView.layer.cornerRadius = 60
        greenColorView.layer.cornerRadius = 60
        
        gratInclusionButton.layer.cornerRadius = 20
    }

    @IBAction func includesColorPressed() {
        switch sumPressedButton {
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
    
        
        
        
        
        
        /*  if counter == 0 {
            gratInclusionButton.setTitle("Next", for: .normal)
            redColorView.alpha = 1
            counter += 1
        } else if counter > 0  {
            redColorView.alpha = 0.5
            yellowColorView.alpha = 1
            counter += 1
        } else if counter > 1  {
            yellowColorView.alpha = 0.5
            greenColorView.alpha = 1
        } else {
            greenColorView.alpha = 0.5
            redColorView.alpha = 1
        }
     */
    }
    
}

