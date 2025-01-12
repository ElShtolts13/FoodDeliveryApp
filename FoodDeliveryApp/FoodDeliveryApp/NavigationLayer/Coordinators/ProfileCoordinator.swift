//
//  ProfileCoordinator.swift
//  FoodDeliveryApp
//
//  Created by Надежда Капацина on 13.01.2025.
//

import UIKit

class ProfileCoordinator: Coordinator {
    
    override func start() {
        let vc = ViewController()
        vc.view.backgroundColor = .black
        navigationController?.pushViewController(vc, animated: true)
    }
    
    override func finish() {
        print("ProfileCoordinator finish")
    }
}
