//
//  GameplayController.swift
//  TabulaRasa
//
//  Created by Jared Warren on 9/4/19.
//  Copyright © 2019 Warren. All rights reserved.
//

import Foundation

class GameplayController {
    
    var currentLevel = 0
    var isVictorious = false
    var isFinalLevel: Bool {
        return currentLevel == 6
    }
    var board: [[Bool]] = Levels(rawValue: 0)!.level
    
    func flipTile(at coordinates: (x: Int, y: Int)) -> Bool {
        board[coordinates.x][coordinates.y].toggle()
        
        if coordinates.x > 0 {
            board[coordinates.x - 1][coordinates.y].toggle()
        }
        
        if coordinates.x < 4 {
            board[coordinates.x + 1][coordinates.y].toggle()
        }
        
        if coordinates.y > 0 {
            board[coordinates.x][coordinates.y - 1].toggle()
        }
        
        if coordinates.y < 4 {
            board[coordinates.x][coordinates.y + 1].toggle()
        }
        isVictorious = checkForVictory()
        return isVictorious
    }
    
    func restartCurrentLevel() {
        guard let level = Levels(rawValue: currentLevel)?.level else { return }
        board = level
    }
    
    func startNextLevel() {
        currentLevel += 1
        if let nextLevel = Levels(rawValue: currentLevel)?.level {
            board = nextLevel
        } else {
            currentLevel = -1
            startNextLevel()
        }
        isVictorious = false
    }
    
    private func checkForVictory() -> Bool {
        for row in board {
            if row.contains(true) { return false }
        }
        return true
    }
}
