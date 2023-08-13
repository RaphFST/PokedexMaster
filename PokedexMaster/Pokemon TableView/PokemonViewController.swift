//
//  PokemonViewController.swift
//  PokedexMaster
//
//  Created by Raphael Fassotte on 12/08/2023.
//

import UIKit

class PokemonViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet var pokemonTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Pokemon"
        
        pokemonTableView.dataSource = self
        pokemonTableView.delegate = self
        pokemonTableView.register(UINib(nibName: "PokemonTableViewCell", bundle: nil), forCellReuseIdentifier: "PokemonTableViewCell")
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        DataManager.shared.pokemon.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = pokemonTableView.dequeueReusableCell(withIdentifier: "PokemonTableViewCell", for: indexPath) as! PokemonTableViewCell
        cell.setup(pokemon: DataManager.shared.pokemon[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailViewController = storyboard?.instantiateViewController(identifier: "DetailViewController") as! DetailViewController
        detailViewController.pokemon = DataManager.shared.pokemon[indexPath.row]
        
        navigationController?.pushViewController(detailViewController, animated: true)
    }

}
