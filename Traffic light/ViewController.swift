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
    
    let dark:CGFloat = 0.5
    let bright:CGFloat = 1
    var lights:TrafficLight = .green
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        greenLightView.alpha = dark
        orangeLightView.alpha = dark
        redLightView.alpha = dark
        
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
            greenLightView.alpha = bright
            orangeLightView.alpha = dark
            redLightView.alpha = dark
        case .orange:
            lights = TrafficLight.red
            greenLightView.alpha = dark
            orangeLightView.alpha = bright
            redLightView.alpha = dark
        case .red:
            lights = TrafficLight.green
            greenLightView.alpha = dark
            orangeLightView.alpha = dark
            redLightView.alpha = bright
        
        }
        
    }
    
}

