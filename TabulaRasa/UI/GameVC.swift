//
//  GameVC.swift
//  TabulaRasa
//
//  Created by Jared Warren on 9/4/19.
//  Copyright © 2019 Warren. All rights reserved.
//

import UIKit

/// The ViewController where all gameplay takes place.
class GameVC: UIViewController, UITableViewDelegate, UITableViewDataSource, TRCellDelegate {
    
    // MARK: - Outlets
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var trTableView: UITableView!
    @IBOutlet weak var scoreLabel: UILabel!
    
    // MARK: - Properties
    
    let gc = GameplayController()
    var score = 0 {
        didSet {
            scoreLabel.text = "Score: \(score)"
        }
    }
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        trTableView.delegate = self
        trTableView.dataSource = self
    }
    
    // MARK: - Table View Delegate and Data Source
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "trCell", for: indexPath) as! TRCell
        cell.delegate = self
        cell.updateCell(index: indexPath.row, buttonStatuses: gc.board[indexPath.row], levelNumber: gc.currentLevel)
        return cell
    }
    
    // MARK: - TRCell Delegate
    
    func trCellButtonTapped(at coordinates: (Int, Int)) {
        if gc.isVictorious {
            if gc.isFinalLevel {
                self.endGame()
            } else {
                gc.startNextLevel()
                titleLabel.text = Constants.tabulaRasa
                score = 0
                trTableView.reloadData()
            }
        } else {
            score += 1
            let victory = gc.flipTile(at: coordinates)
            titleLabel.text = victory ? "Victory in \(score)" : Constants.tabulaRasa
            trTableView.reloadData()
        }
    }
    
    // MARK: - Custom Methods
    
    func endGame() {
        trTableView.isUserInteractionEnabled = false
        UIView.animate(withDuration: 1) {
            self.trTableView.alpha = 0
            self.scoreLabel.alpha = 0
            self.titleLabel.text = Constants.congratulations
        }
    }
    
    // MARK: - Actions
    
    @IBAction func resetButtonTapped(_ sender: Any) {
        gc.restartCurrentLevel()
        trTableView.reloadData()
        score = 0
    }
    
    @IBAction func helpButtonTapped(_ sender: Any) {
        present(UIStoryboard(name: Constants.main, bundle: nil).instantiateViewController(withIdentifier: Constants.helpVC), animated: true)
    }
}

