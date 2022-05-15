//
//  Player.swift
//  Examen_2P
//
//  Created by Jeremy Franco on 09/05/22.
//

import UIKit

class Player{
    var name: String;
    var scoreHangman: Int;
    var scoreTrivia: Int;
    var scoreTicTacToe: Int
    var user: String;
    var password: String;

    
    init(name: String, scoreHangman: Int, scoreTrivia: Int, scoreTicTacToe: Int,  user: String, password: String){
        self.name = name;
        self.scoreHangman = scoreHangman;
        self.scoreTrivia = scoreTrivia;
        self.scoreTicTacToe = scoreTicTacToe;
        self.user = user;
        self.password = password;
    }
}


