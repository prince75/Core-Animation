//
//  UITextFieldExtension.swift
//  CoreAnimation
//
//  Created by Pushpendra Khandelwal on 23/09/17.
//  Copyright © 2017 Kuliza-pushpendra. All rights reserved.
//

import Foundation
import UIKit

extension UITextField {
    
    func shake() {
        let animation = CABasicAnimation.init(keyPath: "position")
        animation.duration = 0.05
        animation.repeatCount = 5
        animation.autoreverses = true
        animation.fromValue = NSValue(cgPoint: CGPoint(x: self.center.x - 4, y: self.center.y))
        animation.toValue = NSValue(cgPoint: CGPoint(x: self.center.x + 4, y: self.center.y))
        self.layer.add(animation, forKey: "position")
    }
}
