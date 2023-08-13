//
//  DetailViewController.swift
//  PokedexMaster
//
//  Created by Raphael Fassotte on 12/08/2023.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet var imagePokemon : UIImageView!
    @IBOutlet var nbrPokedex : UILabel!
    @IBOutlet var screenNbrPokedex : UILabel!
    @IBOutlet var nomPokemon : UILabel!
    @IBOutlet var resultType : UILabel!
    @IBOutlet var screenType : UILabel!
    @IBOutlet var resultHeight : UILabel!
    @IBOutlet var screenHeight : UILabel!
    @IBOutlet var resultGen : UILabel!
    @IBOutlet var screenGen : UILabel!
    
    
    var pokemon: DataManager.Pokemon?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let pokemon else { return }
        
        nomPokemon.text = pokemon.nom.uppercased()
        nomPokemon.font = UIFont.boldSystemFont(ofSize: 20)
        nomPokemon.textColor = UIColor(named: "pokeDarkGray")
        nomPokemon.textAlignment = .center
        
        imagePokemon.image = UIImage(named: pokemon.nom)
        
        nbrPokedex.text = String(pokemon.pokedexNumber)
        nbrPokedex.textColor = UIColor(named: "pokeLightGray")
        
        screenNbrPokedex.text = "Pokemon # :"
        screenNbrPokedex.textColor = UIColor(named: "pokeDarkGray")
        screenNbrPokedex.font = UIFont.boldSystemFont(ofSize: 17)
        
        resultType.text = pokemon.type
        resultType.textColor = UIColor(named: "pokeLightGray")
        
        screenType.text = "Type :"
        screenType.textColor = UIColor(named: "pokeDarkGray")
        screenType.font = UIFont.boldSystemFont(ofSize: 17)
        
        resultHeight.text = pokemon.height
        resultHeight.textColor = UIColor(named: "pokeLightGray")
        
        screenHeight.text = "Size :"
        screenHeight.textColor = UIColor(named: "pokeDarkGray")
        screenHeight.font = UIFont.boldSystemFont(ofSize: 17)
        
        resultGen.text = pokemon.generation
        resultGen.textColor = UIColor(named: "pokeLightGray")
        
        screenGen.text = "Generation :"
        screenGen.textColor = UIColor(named: "pokeDarkGray")
        screenGen.font = UIFont.boldSystemFont(ofSize: 17)
        
        
    }
}

