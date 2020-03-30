//
//  ParallaxCell.swift
//  parallax
//
//  Created by Mariah Baysic on 3/30/20.
//  Copyright © 2020 SpacedOut. All rights reserved.
//

import UIKit

class ParallaxCell: UITableViewCell {
    
    @IBOutlet weak var cellImg: UIImageView!
    @IBOutlet weak var cellLbl: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        setupParallax()
    }

    func configureCell(image: UIImage, description: String) {
        cellImg.image = image
        cellLbl.text = description
    }
    
    func setupParallax() {
        let min = CGFloat(-100)
        let max = CGFloat(100)
        
        let xMotion = UIInterpolatingMotionEffect(keyPath: "layer.transform.translation.x", type: .tiltAlongHorizontalAxis)
        xMotion.minimumRelativeValue = min
        xMotion.maximumRelativeValue = max
        
        let yMotion = UIInterpolatingMotionEffect(keyPath: "layer.transform.translation.y", type: .tiltAlongVerticalAxis)
        yMotion.minimumRelativeValue = min
        yMotion.maximumRelativeValue = max
        
        let motionEffectGroup = UIMotionEffectGroup()
        motionEffectGroup.motionEffects = [xMotion, yMotion]
        
        cellImg.addMotionEffect(motionEffectGroup)
    }
    
}
