//
//  TicTacToeViewController.swift
//  Examen_2P
//
//  Created by Jeremy Franco on 14/05/22.
//

import UIKit

class TicTacToeViewController: UIViewController {

    @IBOutlet weak var c1: UIButton!
    @IBOutlet weak var c2: UIButton!
    @IBOutlet weak var c3: UIButton!
    @IBOutlet weak var c4: UIButton!
    @IBOutlet weak var c5: UIButton!
    @IBOutlet weak var c6: UIButton!
    @IBOutlet weak var c7: UIButton!
    @IBOutlet weak var c8: UIButton!
    @IBOutlet weak var c9: UIButton!
    @IBOutlet weak var scoreX: UILabel!
    @IBOutlet weak var scoreO: UILabel!
    
    
    var firstTurn : String = "x";
    var currentTurn : String = "x";
    var score1 : Int = 0;
    var score2 : Int = 0;
    let cross : String = "x"
    let nought : String = "o"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setWinner()

    }
    
    @IBAction func tap(_ sender: UIButton) {
        game(sender)
        winCondition1()
        winCondition2()
        tie()

        
        
    }
    
    func game(_ sender: UIButton) {
        if(sender.title(for: .normal) == nil || sender.title(for: .normal) == ""){
            if (currentTurn == cross) {
                sender.setTitle(cross, for: .normal)
                currentTurn = nought
            }
            else if (currentTurn == nought) {
                sender.setTitle(nought, for: .normal)
                currentTurn = cross
            }
            
        }
            
    }
    
    func winCondition1(){
        if (c1.title(for: .normal) == cross && c2.title(for: .normal) == cross && c3.title(for: .normal) == cross) {
            score1 += 1
            setScore(title: "Gana X")
        }
        else if (c4.title(for: .normal) == cross && c5.title(for: .normal) == cross && c6.title(for: .normal) == cross) {
            score1 += 1
            setScore(title: "Gana X")
        }
        else if (c7.title(for: .normal) == cross && c8.title(for: .normal) == cross && c9.title(for: .normal) == cross) {
            score1 += 1
            setScore(title: "Gana X")
        }
        else if (c1.title(for: .normal) == cross && c4.title(for: .normal) == cross && c7.title(for: .normal) == cross) {
            score1 += 1
            setScore(title: "Gana X")
        }
        else if (c2.title(for: .normal) == cross && c5.title(for: .normal) == cross && c8.title(for: .normal) == cross) {
            score1 += 1
            setScore(title: "Gana X")
        }
        else if (c3.title(for: .normal) == cross && c6.title(for: .normal) == cross && c9.title(for: .normal) == cross) {
            score1 += 1
            setScore(title: "Gana X")
        }
        else if (c1.title(for: .normal) == cross && c5.title(for: .normal) == cross && c9.title(for: .normal) == cross) {
            score1 += 1
            setScore(title: "Gana X")
        }
        else if (c3.title(for: .normal) == cross && c5.title(for: .normal) == cross && c7.title(for: .normal) == cross) {
            score1 += 1
            setScore(title: "Gana X")
        }
       
    }
    
    func winCondition2(){
        if (c1.title(for: .normal) == nought && c2.title(for: .normal) == nought && c3.title(for: .normal) == nought) {
            score2 += 1
            setScore(title: "Gana O")
        }
        else if (c4.title(for: .normal) == nought && c5.title(for: .normal) == nought && c6.title(for: .normal) == nought) {
            score2 += 1
            setScore(title: "Gana O")
        }
        else if (c7.title(for: .normal) == nought && c8.title(for: .normal) == nought && c9.title(for: .normal) == nought) {
            score2 += 1
            setScore(title: "Gana O")
        }
        else if (c1.title(for: .normal) == nought && c4.title(for: .normal) == nought && c7.title(for: .normal) == nought) {
            score2 += 1
            setScore(title: "Gana O")
        }
        else if (c2.title(for: .normal) == nought && c5.title(for: .normal) == nought && c8.title(for: .normal) == nought) {
            score2 += 1
            setScore(title: "Gana O")
        }
        else if (c3.title(for: .normal) == nought && c6.title(for: .normal) == nought && c9.title(for: .normal) == nought) {
            score2 += 1
            setScore(title: "Gana O")
        }
        else if (c1.title(for: .normal) == nought && c5.title(for: .normal) == nought && c9.title(for: .normal) == nought) {
            score2 += 1
            setScore(title: "Gana O")
        }
        else if (c3.title(for: .normal) == nought && c5.title(for: .normal) == nought && c7.title(for: .normal) == nought) {
            score2 += 1
            setScore(title: "Gana O")
        }
    }
    func tie(){
        if(c1.title(for: .normal) != nil && c1.title(for: .normal) != "" && c2.title(for: .normal) != nil && c2.title(for: .normal) != "" && c3.title(for: .normal) != nil && c3.title(for: .normal) != "" && c4.title(for: .normal) != nil && c4.title(for: .normal) != "" && c5.title(for: .normal) != nil && c5.title(for: .normal) != "" && c6.title(for: .normal) != nil && c6.title(for: .normal) != "" && c7.title(for: .normal) != nil && c7.title(for: .normal) != "" && c8.title(for: .normal) != nil && c8.title(for: .normal) != "" && c9.title(for: .normal) != nil && c9.title(for: .normal) != ""){
            setScore(title: "Empate")
        }
    }
    
    func resetBoard(){
        c1.setTitle("", for: .normal)
        c2.setTitle("", for: .normal)
        c3.setTitle("", for: .normal)
        c4.setTitle("", for: .normal)
        c5.setTitle("", for: .normal)
        c6.setTitle("", for: .normal)
        c7.setTitle("", for: .normal)
        c8.setTitle("", for: .normal)
        c9.setTitle("", for: .normal)
    }
    
    func setScore(title: String){
        scoreX.text = String(score1);
        scoreO.text = String(score2);
        if(score1 == 2 || score2 == 2){
            setWinner()
            resetBoard()
            score1 = 0
            score2 = 0
            scoreX.text = "X"
            scoreO.text = "O"
        }
        else {
            let ac = UIAlertController(title: title, message: nil, preferredStyle: .actionSheet)
            ac.addAction(UIAlertAction(title: "Resetear", style: .default, handler: { (_) in self.resetBoard()}))
            self.present(ac, animated: true)
        }
    }
    
    func setWinner(){
        if(score1 == 2){
            let alert = UIAlertController(title: "Felicidades", message: "Ha ganado el jugador 1", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        else if(score2 == 2){
            let alert = UIAlertController(title: "Felicidades", message: "Ha ganado el jugador 2", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
                
    }


}
