//
//  TabBarController.swift
//  InstagramReel
//
//  Created by Reuben Simphiwe Kuse on 2024/02/11.
//

import Foundation
import UIKit


class TabBarController: UITabBarController {
   
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .black
        setupTabBar()
        setupViewControllers()
    }
    
    func setupTabBar() {
        tabBar.isTranslucent = false
        tabBar.barTintColor = UIColor.black
    }
    
    func setupViewControllers() {
        

        let homeTabBarItem = UITabBarItem(title: "",
                                          image: UIImage(named: "icon_home"),
                                          selectedImage: UIImage(named: "icon_home_selected"))
        let homeViewController = UINavigationController(rootViewController: ViewController())
        homeViewController.tabBarItem = homeTabBarItem
        
      
        let searchTabBarItem = UITabBarItem(title: "",
                                            image: UIImage(named: "icon_Search"),
                                              selectedImage: UIImage(named: "icon_selected_search"))
        let searchController = UINavigationController(rootViewController: SearchViewController())
        searchController.tabBarItem = searchTabBarItem
        
        let addTabBarItem = UITabBarItem(title: "",
                                              image: UIImage(named: "icon_messages"),
                                              selectedImage: UIImage(named: "icon_messages_selected"))
        let addController = UINavigationController(rootViewController: AddViewController())
        addController.tabBarItem = addTabBarItem
        
        
        let reelsTabBarItem = UITabBarItem(title: "Reels",
                                              image: UIImage(named: "reel_menu_video_icon"),
                                              selectedImage: UIImage(named: "reel_menu_video_icon"))
        let videoReelsController = UINavigationController(rootViewController: ReelsViewController())
        videoReelsController.tabBarItem = reelsTabBarItem
       
        let profileTabBarItem = UITabBarItem(title: "Profile",
                                              image: UIImage(named: "profile_circled_icon"),
                                              selectedImage: UIImage(named: "profile_circled_icon"))
        let profileController = UINavigationController(rootViewController: ProfileViewController())
        profileController.tabBarItem = profileTabBarItem
        
        
        self.viewControllers = [homeViewController, searchController, addController, videoReelsController, profileController]
        
    }
}
