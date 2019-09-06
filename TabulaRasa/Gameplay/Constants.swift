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
    static let colors: [UIColor] = [#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0),#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1),#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1),#colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1),#colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1),#colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1),#colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)] // board and tile colors
    static let tabulaRasa = "Tabula Rasa" // title of the app
    static let main = "Main" // story board name
    static let helpVC = "helpVC" // view controller scene name
    static let congratulations = "Congratulations!" // final victory text
}
