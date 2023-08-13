//
//  UserLoginViewController.swift
//  PokedexMaster
//
//  Created by Raphael Fassotte on 12/08/2023.
//

import UIKit

class UserLoginViewController: UIViewController {
    
    // MARK : - Outlet LoginView
    
    // Déclaration des @IBOutlet
    @IBOutlet weak var headerImageView : UIImageView!
    @IBOutlet weak var closeButton : UIButton!
    @IBOutlet weak var connectionButton : UIButton!
    @IBOutlet weak var loginTexField : UITextField!
    @IBOutlet weak var passwordTextField : UITextField!
    
    var image: UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        headerImageView.image = image
        
        // Paramètrage de la couleur du background de la vue principal
        view.backgroundColor = UIColor(named: "pokeDarkGray")
        
        // Paramètrage du UIButton de fermeture de la fenêtre, changement du texte et ajout de l'action
        closeButton.setTitle("Close", for: .normal)
        closeButton.addTarget(self, action: #selector(closeButtonTapped), for: .touchUpInside)
        
        // Paramètrage du UIButton de connection, changement du texte, changement de la couleur du background, changement de la couleur du texte
        connectionButton.setTitle("Connection", for: .normal)
        connectionButton.backgroundColor = UIColor(named: "pokeYellow")
        connectionButton.tintColor = UIColor(named: "pokeDarkGray")
        
        // Paramètrages du champs de texte textField Login, ajout du texte placeHolder, selectionner le type de clavier
        loginTexField.placeholder = "Login"
        loginTexField.keyboardType = .default
        
        // Paramètrage du champs de texte textField Password, ajout du texte placeHolder, selectionner le type de clavier, activer la fonction de masquage du texte entré.
        passwordTextField.placeholder = "Password"
        passwordTextField.keyboardType = .default
        passwordTextField.isSecureTextEntry = true
        
        // Permet d'utiliser le clique en exterieur de la zone de texte pour fermer le clavier
        let tapOnView = UITapGestureRecognizer(target: view, action:
        #selector(UIView.endEditing))
        view.addGestureRecognizer(tapOnView)
        
    }
    // Action pour fermer la fenêtre en utilisant le bouton close
    @IBAction func closeButtonTapped() {
        dismiss(animated: true, completion: nil)
        
    }
    //Action pour ouvrir le clavier sur la textField Login
    @IBAction private func showKeyboardPressedLogin() {
        loginTexField.becomeFirstResponder()
    }
    //Action pour ouvrir le clavier sur la textField Password
    @IBAction private func showKeyboardPressedPassword() {
        passwordTextField.becomeFirstResponder()
    }
    
    @IBAction func connection(){
        let login = loginTexField!.text
        let password = passwordTextField!.text
        
        if let login = login, let password = password, !(login.isEmpty), !(password.isEmpty), login.contains("@"){
            let mainNavViewController = storyboard?.instantiateViewController(identifier: "navContTableViewPokeList") as? UINavigationController
            mainNavViewController?.modalPresentationStyle = .fullScreen
            present(mainNavViewController!, animated: false)
            
        } else {
            let alert = UIAlertController(title: "ERROR", message: "Login/email invalid", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default))
            present(alert, animated: false)
        }
    }
    
}
