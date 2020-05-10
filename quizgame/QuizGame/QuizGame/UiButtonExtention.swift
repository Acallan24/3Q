//
//  UiButtonExtention.swift
//  QuizGame
//
//  Created by Rahul Kashyap on 3/28/18.
//  Copyright © 2018 Rahul Kashyap. All rights reserved.
//

import Foundation
import UIKit

extension UIButton{
    
    func pulsate(){
        

        let pulse = CASpringAnimation(keyPath: "transform.scale")
        pulse.duration = 0.6
        pulse.fromValue = 0.95
        pulse.toValue = 1.0
        pulse.autoreverses = true
        pulse.repeatCount = 2
        pulse.initialVelocity = 0.5
        pulse.damping = 1.0
        layer.add(pulse, forKey: nil)
    }
    
    func shake(){
    
        let shake = CASpringAnimation(keyPath: "position")
        shake.duration = 0.1
        shake.repeatCount = 2
        shake.autoreverses = true
        
        let fromPoint = CGPoint (x: center.x-5,y: center.y)
        let fromValue = NSValue(cgPoint: fromPoint)
        
        let toPoint = CGPoint(x: center.x + 5, y: center.y)
        let tovalue = NSValue(cgPoint: toPoint)
        
        shake.fromValue = fromValue
        shake.toValue = tovalue
        
        layer.add(shake, forKey: nil)
}
}
