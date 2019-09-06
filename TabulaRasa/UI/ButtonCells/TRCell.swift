//
//  TRCell.swift
//  TabulaRasa
//
//  Created by Jared Warren on 9/4/19.
//  Copyright © 2019 Warren. All rights reserved.
//

import UIKit

class TRCell: UITableViewCell {

    weak var delegate: TRCellDelegate?
    var cellIndex = 0
    var currentLevel = 0
    
    @IBOutlet weak var button0: TRButton!
    @IBOutlet weak var button1: TRButton!
    @IBOutlet weak var button2: TRButton!
    @IBOutlet weak var button3: TRButton!
    @IBOutlet weak var button4: TRButton!
    
    func updateCell(index: Int, buttonStatuses: [Bool], levelNumber: Int) {
        cellIndex = index
        currentLevel = levelNumber
        let gameColor = Constants.colors[levelNumber]
        let borderColor = gameColor.cgColor
        button0.layer.borderColor = borderColor
        button0.gameColor = gameColor
        button0.isFlipped = buttonStatuses[0]
        button1.layer.borderColor = borderColor
        button1.gameColor = gameColor
        button1.isFlipped = buttonStatuses[1]
        button2.layer.borderColor = borderColor
        button2.gameColor = gameColor
        button2.isFlipped = buttonStatuses[2]
        button3.layer.borderColor = borderColor
        button3.gameColor = gameColor
        button3.isFlipped = buttonStatuses[3]
        button4.layer.borderColor = borderColor
        button4.gameColor = gameColor
        button4.isFlipped = buttonStatuses[4]
    }
    
    @IBAction func trButtonTapped(_ sender: UIButton) {
        delegate?.trCellButtonTapped(at: (cellIndex, sender.tag))
    }
}

protocol TRCellDelegate: AnyObject {
    func trCellButtonTapped(at coordinates: (Int, Int))
}
