//
//  ViewController.swift
//  CoreAnimation
//
//  Created by Pushpendra Khandelwal on 23/09/17.
//  Copyright © 2017 Kuliza-pushpendra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel! {
        didSet {
            self.label.isUserInteractionEnabled = true
            let tap = UITapGestureRecognizer.init(target: self, action: #selector(rotate))
            label.addGestureRecognizer(tap)
            
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let layer = EmitterLayer()
        self.view.layer.addSublayer(layer.createParticleSource(at: self.view.center,image: UIImage.init(named: "drop")!))
        
    }

    func rotate() {
        let rect = CGRect(x: label.center.x - 100, y: label.center.y, width: 200, height: 200)
        let circlePath = UIBezierPath.init(ovalIn: rect)

        let circleAnim = CAKeyframeAnimation.init(keyPath: "position")
        circleAnim.path = circlePath.cgPath
        circleAnim.duration = 2
        
        label.layer.add(circleAnim, forKey: "position")
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

