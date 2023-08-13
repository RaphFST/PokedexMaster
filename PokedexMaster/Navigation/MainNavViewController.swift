//
//  MainNavViewController.swift
//  PokedexMaster
//
//  Created by Raphael Fassotte on 12/08/2023.
//

import UIKit

class MainNavViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let firstViewController = UIViewController()
        firstViewController.view.backgroundColor = .white
        firstViewController.tabBarItem = UITabBarItem(title: "Pokemon", image: UIImage(named: "pokemon_ico"), tag: 0)
        
        let secondViewController = UIViewController()
        secondViewController.view.backgroundColor = .white
        secondViewController.tabBarItem = UITabBarItem(title: "Picker", image: UIImage(named: "picker_ico"), tag: 1)
        
        viewControllers = [firstViewController, secondViewController]
        
        self.tabBar.backgroundColor = UIColor(named: "pokeLightGray")
        self.tabBar.unselectedItemTintColor = .black
        self.tabBar.selectedImageTintColor = UIColor(named: "pokeYellow")
        
    }

}
