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
        
        
    }

    func configureCell(image: UIImage, description: String) {
        cellImg.image = image
        cellLbl.text = description
    }
    
    func setupParallax() {
        
    }
    
}
