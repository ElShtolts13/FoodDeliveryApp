//
//  HomeCoordinator.swift
//  FoodDeliveryApp
//
//  Created by Надежда Капацина on 13.01.2025.
//

import UIKit

class HomeCoordinator: Coordinator {
    
    override func start() {
        let vc = ViewController()
        vc.view.backgroundColor = .red
        navigationController?.pushViewController(vc, animated: true)
    }
    
    override func finish() {
        print("HomeCoordinator finish")
    }
}

