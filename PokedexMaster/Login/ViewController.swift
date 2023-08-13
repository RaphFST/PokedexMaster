//
//  ViewController.swift
//  PokedexMaster
//
//  Created by Raphael Fassotte on 12/08/2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func connectWithGoogle(){
        
        let login = storyboard?.instantiateViewController(identifier: "UserLoginViewController") as! UserLoginViewController
        login.image = UIImage(named: "google_header")
        present(login, animated: true)
        
    }
    
    @IBAction func connectWithFacebook(){
        let login = storyboard?.instantiateViewController(identifier: "UserLoginViewController") as! UserLoginViewController
        login.image = UIImage(named: "faceook_header")
        present(login, animated: true)
        
    }

}
