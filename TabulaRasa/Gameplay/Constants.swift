//
//  Levels.swift
//  TabulaRasa
//
//  Created by Jared Warren on 9/5/19.
//  Copyright © 2019 Warren. All rights reserved.
//

import UIKit

/// 2D array of Bool which tracks ON/OFF positions for tiles. Should be 5x5.
typealias Level = [[Bool]]

/// Contains a new case for each level added to the game. Calling `.level` will return a 5x5 Level.
enum Levels: Int {
    case zero
    case one
    case two
    case three
    case four
    case five
    case six
    
    var level: Level {
        switch self {
        case .zero:
            return [[false, true, false, true, false],
                    [true, true, false, true, true],
                    [false, false, false, false, false],
                    [true, true, false, true, true],
                    [false, true, false, true, false]]
        case .one:
            return [[false, true, true, true, false],
                    [true, false, true, false, true],
                    [false, false, false, false, false],
                    [true, false, true, false, true],
                    [false, true, true, true, false]]
        case .two:
            return [[false, true, true, true, false],
                    [true, true, true, true, true],
                    [true, true, false, true, true],
                    [true, true, true, true, true],
                    [false, true, true, true, false]]
        case .three:
            return [[false, true, true, true, false],
                     [true, true, false, true, true],
                     [true, false, true, false, true],
                     [true, true, false, true, true],
                     [false, true, true, true, false]]
        case .four:
            return [[false, false, true, false, false],
                    [false, true, false, true, false],
                    [true, false, true, false, true],
                    [false, true, false, true, false],
                    [false, false, true, false, false]]
        case .five:
            return [[false, false, true, false, false],
                    [false, true, true, true, false],
                    [true, true, false, true, true],
                    [false, true, true, true, false],
                    [false, false, true, false, false]]
        case .six:
            return [[true, false, false, false, true],
                    [false, true, true, true, false],
                    [false, true, true, true, false],
                    [false, true, true, true, false],
                    [true, false, false, false, true]]
        }
    }
}

/// Constants used in Tabula Rasa.
enum Constants {
    static let colors: [UIColor] = [#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0),#colorLiteral(red: 0.7001274824, green: 0.8954351544, blue: 0.9704374671, alpha: 1),#colorLiteral(red: 0.7837542892, green: 0.7337166667, blue: 0.9513815045, alpha: 1),#colorLiteral(red: 0.9365888238, green: 0.7918943763, blue: 0.6611815691, alpha: 1),#colorLiteral(red: 0.95729357, green: 0.9486065507, blue: 0.6637659669, alpha: 1),#colorLiteral(red: 0.6959481835, green: 0.8869327903, blue: 0.7059836984, alpha: 1),#colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)] // board and tile colors
    static let tabulaRasa = "Tabula Rasa" // title of the app
    static let main = "Main" // story board name
    static let helpVC = "helpVC" // view controller scene name
    static let congratulations = "Congratulations!" // final victory text
}
