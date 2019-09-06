//
//  GameplayController.swift
//  TabulaRasa
//
//  Created by Jared Warren on 9/4/19.
//  Copyright © 2019 Warren. All rights reserved.
//

import Foundation

/// Handles all gameplay and state management logic.
class GameplayController {
    
    // MARK: - Properties
    
    var currentLevel = 0 // level the player is currently on
    var isVictorious = false // set to true each time the board is wiped and then reset when the next level is initiated
    var isFinalLevel: Bool { // set to true when player begins final level
        return currentLevel == 6
    }
    var board: [[Bool]] = Levels(rawValue: 0)!.level // 2D array of Bool which serves as the data source for UI
    
    // MARK: - Interface Methods
    
    /// Toggles the selected tile and then adjacent tiles. Returns true if move results in victory.
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
    
    /// Resets the board to how it was when player began `currentLevel`.
    func restartCurrentLevel() {
        guard let level = Levels(rawValue: currentLevel)?.level else { return }
        board = level
    }
    
    /// Advances `currentLevel` by 1 and then sets up the board.
    func startNextLevel() {
        currentLevel += 1
        if let nextLevel = Levels(rawValue: currentLevel)?.level {
            board = nextLevel
        } else {
            // this `else` should never run if `isFinalLevel` is tracking the correct final level Int.
            // i included it as a silent way of preventing the app from crashing when level gets too high
            // will instead restart the game at level 0
            currentLevel = -1
            startNextLevel()
        }
        isVictorious = false
    }
    
    // MARK: - Internal Methods
    
    /// Returns true if all tiles are turned OFF.
    private func checkForVictory() -> Bool {
        for row in board {
            if row.contains(true) { return false }
        }
        return true
    }
}
