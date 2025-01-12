//
//  OrderCoordinator.swift
//  FoodDeliveryApp
//
//  Created by Надежда Капацина on 13.01.2025.
//

import UIKit

class OrderCoordinator: Coordinator {
    
    override func start() {
        let vc = ViewController()
        vc.view.backgroundColor = .yellow
        navigationController?.pushViewController(vc, animated: true)
    }
    
    override func finish() {
        print("OrderCoordinator finish")
    }
}
