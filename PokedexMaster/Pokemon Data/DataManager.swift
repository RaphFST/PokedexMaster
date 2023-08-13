//
//  DataManager.swift
//  PokedexMaster
//
//  Created by Raphael Fassotte on 12/08/2023.
//

import Foundation
import UIKit

class DataManager{
    
    static var shared = DataManager()
    
    struct Pokemon {
        var nom: String
        var type: String
        var generation: String
        var pokedexNumber: Int
        var height: String
    }
    
    struct Colors {
        var colorName: String
        var color: UIColor
    }
    
    var pokemon = [
        Pokemon(nom: "Bulbizarre", type: "Grass", generation: "1", pokedexNumber: 34, height: "145"),
        Pokemon(nom: "Herbizarre", type: "Grass / Poison", generation: "1", pokedexNumber: 78, height: "2m78"),
        Pokemon(nom: "Florizarre", type: "Grass / Poison", generation: "1", pokedexNumber: 31, height: "4m"),
        Pokemon(nom: "Carapuce", type: "Water",  generation: "1", pokedexNumber: 39, height: "1m"),
        Pokemon(nom: "Reptincel", type: "Fire", generation: "1", pokedexNumber: 30, height: "2m"),
        Pokemon(nom: "Salameche", type: "Fire",  generation: "1", pokedexNumber: 23, height: "1m"),
        Pokemon(nom: "Dracaufeu", type: "Fire", generation: "1", pokedexNumber: 32, height: "4m"),
        ]
    
    var color = [
        Colors(colorName: "Red", color: .red),
        Colors(colorName: "Blue", color: .blue),
        Colors(colorName: "Yellow", color: .yellow)]
    
}

