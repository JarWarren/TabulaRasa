//
//  TRButton.swift
//  TabulaRasa
//
//  Created by Jared Warren on 9/4/19.
//  Copyright © 2019 Warren. All rights reserved.
//

import UIKit

/// One of the 25 tiles on the board. Changes color when `isFlipped` didSet.
class TRButton: UIButton {

    var gameColor: UIColor! // color of the cell's border and fill
    
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
