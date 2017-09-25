//
//  EmitterLayer.swift
//  CoreAnimation
//
//  Created by Pushpendra Khandelwal on 24/09/17.
//  Copyright © 2017 Kuliza-pushpendra. All rights reserved.
//

import UIKit


// Basically provide particle emitter system in core animations.

// What is particle system - It is composed of large number of small graphic object.

// Use - to simulate fire, smog, rain etc

// How to create - i) need a source - CAEmitterLayer
//                  ii) a particle that is emmited from source -> CAEmitterCell

class EmitterLayer: CAEmitterLayer {

    func createParticleSource(at position: CGPoint, image: UIImage) -> CAEmitterLayer {
        let source = CAEmitterLayer()
        source.emitterPosition = position
        source.emitterZPosition = 5
        source.emitterShape = kCAEmitterLayerLine
        source.emitterSize = image.size
        
        // Cell
        let cell = CAEmitterCell()
        cell.birthRate = Float(image.size.width)
        cell.lifetime = 1
        cell.velocity = 200
        cell.scale = 0.1
        cell.scaleSpeed = 1
        
        cell.emissionRange = CGFloat(M_PI)
        cell.contents = image.cgImage
            
        source.emitterCells = [cell]
        
        return source
    }
}
