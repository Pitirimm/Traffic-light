//
//  ViewController.swift
//  Traffic light
//
//  Created by Yuriy Martinovskiy on 18.05.2021.
//

import UIKit



class ViewController: UIViewController {

    @IBOutlet weak var greenLightView: UIView!
    @IBOutlet weak var orangeLightView: UIView!
    @IBOutlet weak var redLightView: UIView!
    
    @IBOutlet weak var startButton: UIButton!
    
    enum TrafficLight {
        case green
        case orange
        case red
    }
    
    var lights:TrafficLight = .green
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        greenLightView.alpha = 0.5
        orangeLightView.alpha = 0.5
        redLightView.alpha = 0.5
        
        greenLightView.layer.cornerRadius = greenLightView.frame.height / 2
        orangeLightView.layer.cornerRadius = orangeLightView.frame.height / 2
        redLightView.layer.cornerRadius = redLightView.frame.height / 2
        startButton.layer.cornerRadius = 15
    }

    @IBAction func tappedStartButton() {
        startButton.setTitle("NEXT", for: .normal)
        
        
        switch lights {
        case .green:
            lights = TrafficLight.orange
            greenLightView.alpha = 1
            orangeLightView.alpha = 0.5
            redLightView.alpha = 0.5
        case .orange:
            lights = TrafficLight.red
            greenLightView.alpha = 0.5
            orangeLightView.alpha = 1
            redLightView.alpha = 0.5
        case .red:
                lights = TrafficLight.green
                greenLightView.alpha = 0.5
                orangeLightView.alpha = 0.5
                redLightView.alpha = 1
        
        }
        
    }
    
}

