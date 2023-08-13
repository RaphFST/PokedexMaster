//
//  PokemonTableViewCell.swift
//  PokedexMaster
//
//  Created by Raphael Fassotte on 12/08/2023.
//

import UIKit

class PokemonTableViewCell: UITableViewCell {

    @IBOutlet var imgPokemon: UIImageView!
    @IBOutlet var labelPokemon: UILabel!



    override func awakeFromNib() {
        super.awakeFromNib()
        labelPokemon.textAlignment = .center
        
    }
    
    func setup(pokemon: DataManager.Pokemon){
        imgPokemon.image = UIImage(named: pokemon.nom)
        labelPokemon.text = pokemon.nom
        labelPokemon.textAlignment = .center
        
    }
    
}
