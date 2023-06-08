//
//  ViewController.swift
//  TrafficLighth
//
//  Created by Misha Shkitov on 31.05.23.
//

import UIKit

class ViewController: UIViewController {
    
    enum Light {
        case red
        case yellow
        case green
    }
    
    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    
    @IBOutlet var changeLightButton: UIButton!
    
    private var currentLight: Light = .red
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLight.alpha = 0.3
        redLight.layer.cornerRadius = redLight.frame.width / 2
        yellowLight.alpha = 0.3
        yellowLight.layer.cornerRadius = yellowLight.frame.width / 2
        greenLight.alpha = 0.3
        greenLight.layer.cornerRadius = greenLight.frame.width / 2
        
        changeLightButton.layer.cornerRadius = 6
        
       
    }

    @IBAction func changeLightButtonDidTapped() {
        changeLightButton.setTitle("NEXT", for: .normal)
        
        switch currentLight {
        case .red:
            redLight.alpha = 1.0
           // yellowLight.alpha = 0.3
            greenLight.alpha = 0.3
            currentLight = .yellow
        case .yellow:
            redLight.alpha = 0.3
            yellowLight.alpha = 1.0
           // greenLight.alpha = 0.3
            currentLight = .green
        case .green:
           // redLight.alpha = 0.3
            yellowLight.alpha = 0.3
            greenLight.alpha = 1.0
            currentLight = .red
        }
    }
    
}

