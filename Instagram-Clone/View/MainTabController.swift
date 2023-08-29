//
//  MainTabController.swift
//  Instagram-Clone
//
//  Created by Bahittin on 29.08.2023.
//

import UIKit

class MainTabController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let feedController = FeedController()
        feedController.tabBarItem.image = UIImage(systemName: "house")
        feedController.title = "Feed"
        
        
        let exploreController = ExploreController()
        exploreController.tabBarItem.image = UIImage(systemName: "gear")
        exploreController.title = "Explore"
        
        
        setViewControllers([feedController,exploreController], animated: true)
        
    }
}
