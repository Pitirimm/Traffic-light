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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        greenLightView.alpha = 0.5
        orangeLightView.alpha = 0.5
        redLightView.alpha = 0.5
        
        greenLightView.layer.cornerRadius = 64
        orangeLightView.layer.cornerRadius = 64
        redLightView.layer.cornerRadius = 64
        startButton.layer.cornerRadius = 15
    }

    @IBAction func tappedStartButton() {
        greenLightView.alpha = 1
        startButton.setTitle("NEXT", for: .normal)
    }
    
}

