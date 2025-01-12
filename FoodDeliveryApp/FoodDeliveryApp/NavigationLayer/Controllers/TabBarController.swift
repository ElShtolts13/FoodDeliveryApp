//
//  TabBarController.swift
//  FoodDeliveryApp
//
//  Created by Надежда Капацина on 13.01.2025.
//

import UIKit

class TabBarController: UITabBarController {
    init(tabBarControllers: [UIViewController]) {
        super.init(nibName: nil, bundle: nil)
        for tabB in tabBarControllers {
            self.addChild(tabB)
        }
    }
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            tabBar.backgroundColor = AppColors.background
            tabBar.tintColor = AppColors.accentOrange
        }
    }

