//
//  OnboardingCoordinator.swift
//  FoodDeliveryApp
//
//  Created by Надежда Капацина on 12.01.2025.
//

import UIKit

class OnboardingCoordinator: Coordinator {
    
    override func start() {
        let vc = ViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    override func finish() {
        print("AppCoordinator finish")
    }
}


