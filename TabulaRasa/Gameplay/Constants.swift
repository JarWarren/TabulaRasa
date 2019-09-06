//
//  Levels.swift
//  TabulaRasa
//
//  Created by Jared Warren on 9/5/19.
//  Copyright © 2019 Warren. All rights reserved.
//

import UIKit

typealias Level = [[Bool]]

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

enum Constants {
    static let colors: [UIColor] = [#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0),#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1),#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1),#colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1),#colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1),#colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1),#colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)]
    static let tabulaRasa = "Tabula Rasa"
    static let main = "Main"
    static let helpVC = "helpVC"
    static let congratulations = "Congratulations!"
}
