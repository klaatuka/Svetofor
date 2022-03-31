//
//  ViewController.swift
//  Svetofor
//
//  Created by Карен Узунян on 31.03.2022.
//

import UIKit

enum CurrenLight {
    case red, yellow, green
}

class ViewController: UIViewController {

    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    private var currentLight = CurrenLight.red
    private let lightIsOn: CGFloat = 1
    private let lightIsOff: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .black
        
        startButton.layer.cornerRadius = 10
        
        redLight.layer.cornerRadius = 75
        greenLight.layer.cornerRadius = 75
        yellowLight.layer.cornerRadius = 75
        
        redLight.alpha = lightIsOff
        yellowLight.alpha = lightIsOff
        greenLight.alpha = lightIsOff
        
        // Do any additional setup after loading the view.
    }
    @IBAction func startButtonPressed() {
        
        startButton.setTitle("Next", for: .normal)
        
        switch currentLight {
        case .red:
            redLight.alpha = lightIsOn
            currentLight = .yellow
            greenLight.alpha = lightIsOff
        case .yellow:
            yellowLight.alpha = lightIsOn
            currentLight = .green
            redLight.alpha = lightIsOff
        case .green:
            greenLight.alpha = lightIsOn
            currentLight = .red
            yellowLight.alpha = lightIsOff
        }
        
        
        
    }
    

}

