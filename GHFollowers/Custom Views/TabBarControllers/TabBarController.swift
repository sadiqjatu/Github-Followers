//
//  TabBarController.swift
//  GHFollowers
//
//  Created by Sadiq Jatu on 08/05/26.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        UITabBar.appearance().tintColor = .systemGreen
        viewControllers = [createSearchNC(), createFavouriteListNC()]
    }
    
    
    func createSearchNC() -> UINavigationController {
        let searchVC = SearchVC()
        searchVC.title = "Search"
        
        let nav = UINavigationController(rootViewController: searchVC)
        nav.tabBarItem = UITabBarItem(title: "Search", image: SFSymbols.magnifyingGlass, tag: 0)
        
        return nav
    }
    
    
    func createFavouriteListNC() -> UINavigationController {
        let favouriteListVC = FavouriteListVC()
        favouriteListVC.title = "Favourites"
        
        let nav = UINavigationController(rootViewController: favouriteListVC)
        nav.tabBarItem = UITabBarItem(title: "Favourites", image: SFSymbols.star, tag: 1)
        
        return nav
    }
}
