//
//  TRButton.swift
//  TabulaRasa
//
//  Created by Jared Warren on 9/4/19.
//  Copyright © 2019 Warren. All rights reserved.
//

import UIKit

class TRButton: UIButton {

    var gameColor: UIColor!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.cornerRadius = 4
        layer.borderWidth = 1
    }
    
    var isFlipped = false {
        didSet {
            self.backgroundColor = self.isFlipped ? gameColor : .black
        }
    }
}
