//
//  LoginViewController.swift
//  PokedexMaster
//
//  Created by Raphael Fassotte on 12/08/2023.
//

import UIKit

class LoginViewController: UIViewController {
    
    // Déclarations des @IBOutlet
    @IBOutlet weak var headerImageView : UIImageView!
    @IBOutlet weak var connectionLabel : UILabel!
    @IBOutlet weak var googleImageButton : UIButton!
    @IBOutlet weak var facebookImageButton : UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Paramètrages des éléments contenu dans le ViewController
        
        // Changement de la couleur du background de la vue principale
        view.backgroundColor = UIColor(named: "pokeDarkGray")
        
        // Ajout de l'image dans l'ImageView
        headerImageView.image = UIImage(named: "header_pokemon")
        
        // Modification de la couleur, du texte et de l'allignement du connectionLabel
        connectionLabel.textColor = UIColor(named: "pokeYellow")
        connectionLabel.text = "Connect with :"
        connectionLabel.textAlignment = .center
        
        // Modification de l'image et du titre du googleImageButton
        googleImageButton.setImage(UIImage(named: "google_ico"), for: .normal)
        googleImageButton.setTitle("     Google", for: .normal)
        googleImageButton.setTitleColor(UIColor(named: "pokeYellow"), for: .normal)
        
        
        // Modification de l'image et du titre du facebookImageButton
        facebookImageButton.setImage(UIImage(named: "facebook_ico"), for: .normal)
        facebookImageButton.setTitle("     Facebook", for: .normal)
        facebookImageButton.setTitleColor(UIColor(named: "pokeYellow"), for: .normal)
        
        
    }
    
    @IBAction func connectWithGoogle(){
        let login = storyboard?.instantiateViewController(identifier: "UserLoginViewController") as! UserLoginViewController
        login.image = UIImage(named: "google_header")
        present(login, animated: true)
    }
    
    @IBAction func connectWithFacebook(){
        let login = storyboard?.instantiateViewController(identifier: "UserLoginViewController") as! UserLoginViewController
        login.image = UIImage(named: "facebook_header")
        present(login, animated: true)
    }
}
