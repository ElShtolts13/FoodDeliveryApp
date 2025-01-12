//
//  MyListCoordinator.swift
//  FoodDeliveryApp
//
//  Created by Надежда Капацина on 13.01.2025.
//

import UIKit

class MyListCoordinator: Coordinator {
    
    override func start() {
        let vc = ViewController()
        vc.view.backgroundColor = .green
        navigationController?.pushViewController(vc, animated: true)
    }
    
    override func finish() {
        print("MyListCoordinator finish")
    }
}
