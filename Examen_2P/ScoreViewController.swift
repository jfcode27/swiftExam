//
//  ScoreViewController.swift
//  Examen_2P
//
//  Created by Jeremy Franco on 15/05/22.
//

import UIKit

class ScoreViewController: UIViewController {
    
    @IBOutlet weak var j1TictacToe: UILabel!
    @IBOutlet weak var j2TicTacToe: UILabel!
    @IBOutlet weak var j1Trivia: UILabel!
    @IBOutlet weak var j2Trivia: UILabel!
    @IBOutlet weak var j1Hangman: UILabel!
    @IBOutlet weak var j2Hangman: UILabel!
    @IBOutlet weak var j1Total: UILabel!
    @IBOutlet weak var j2Total: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        j1TictacToe.text = String(playerArray[0].scoreTicTacToe)
        j2TicTacToe.text = String(playerArray[1].scoreTicTacToe)
        j1Hangman.text = String(playerArray[0].scoreHangman)
        j2Hangman.text = String(playerArray[1].scoreHangman)
        j1Trivia.text = String(playerArray[0].scoreTrivia)
        j2Trivia.text = String(playerArray[1].scoreTrivia)
        j1Total.text = String(playerArray[0].scoreTicTacToe + playerArray[0].scoreHangman + playerArray[0].scoreTrivia)
        j2Total.text = String(playerArray[1].scoreTicTacToe + playerArray[1].scoreHangman + playerArray[1].scoreTrivia)
        
        
    }
    @IBAction func resetScore(_ sender: Any) {
        playerArray[0].scoreTicTacToe = 0
        playerArray[1].scoreTicTacToe = 0
        playerArray[0].scoreHangman = 0
        playerArray[1].scoreHangman = 0
        playerArray[0].scoreTrivia = 0
        playerArray[1].scoreTrivia = 0
        j1TictacToe.text = String(playerArray[0].scoreTicTacToe)
        j2TicTacToe.text = String(playerArray[1].scoreTicTacToe)
        j1Total.text = String(playerArray[0].scoreTicTacToe + playerArray[0].scoreHangman + playerArray[0].scoreTrivia)
        j2Total.text = String(playerArray[1].scoreTicTacToe + playerArray[1].scoreHangman + playerArray[1].scoreTrivia)
        
    }
    



}
