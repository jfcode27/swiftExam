//
//  ViewController.swift
//  Examen_2P
//
//  Created by Jeremy Franco on 06/05/22.
//

import UIKit



class ViewController: UIViewController {
    var playerLogin:Int?

    @IBOutlet weak var txtUser: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func login(_ sender: Any) {
        if(txtUser.text != "" && txtPassword.text != ""){
            playerLogin = playerArray.firstIndex(where: {$0.user == txtUser.text!}).map({$0})
        }
        else{
            let alert = UIAlertController(title: "Error", message: "Llena los campos", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        if(txtUser.text == playerArray[playerLogin!].user && txtPassword.text == playerArray[playerLogin!].password){
            performSegue(withIdentifier: "LoginSegue", sender: self)
        }
        else {
            let alert = UIAlertController(title: "Error", message: "Usuario no encontrado", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }

    }
    
}

