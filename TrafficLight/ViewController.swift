//
//  ViewController.swift
//  TrafficLight
//
//  Created by Лилия Андреева on 24.09.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var yellowView: UIView!
    @IBOutlet weak var greenView: UIView!
    
    @IBOutlet weak var stratButton: UIButton!
    
    enum colorLights {
        case red, yellow, green
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let views = [redView, yellowView, greenView]
        
        for view in views {
            view?.layer.cornerRadius = (view?.layer.frame.width ?? 0) / 2
            view?.alpha = 0.3
        }
        
        stratButton.layer.cornerRadius = 15
        stratButton.setTitle("START", for: .normal)
    }
    
    private var color = colorLights.red
    
    
    @IBAction func startButtonPressed() {
        stratButton.setTitle("NEXT", for: .normal)
        
        switch color {
        case .red:
            redView.alpha = 1.0
            yellowView.alpha = 0.3
            greenView.alpha = 0.3
            color = .yellow
            
        case .yellow:
            redView.alpha = 0.3
            yellowView.alpha = 1.0
            greenView.alpha = 0.3
            color = .green
            
        case .green:
            redView.alpha = 0.3
            yellowView.alpha = 0.3
            greenView.alpha = 1.0
            color = .red
        }
    }
}
