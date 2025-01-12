//
//  Coordinator.swift
//  FoodDeliveryApp
//
//  Created by Надежда Капацина on 24.09.2024.
//

import UIKit

enum coordinatorType {
    case app
    case onboarding
    case home
    case order
    case list
    case profile
}

protocol CoordinatorProtocol : AnyObject {
    var childCoordinators: [CoordinatorProtocol] { get set }
    var type: coordinatorType { get }
    var navigationController: UINavigationController? { get set }
    var finishDelegate: CoordinatorNavigatorFinishDelegate? { get set }
                            
    func start()
    func finish()
    
}

extension CoordinatorProtocol {
    
    func addChildCoordinator(_ childCoordinator: CoordinatorProtocol) {
        childCoordinators.append(childCoordinator)
    }
    
    func removeChildCoordinator(_ childCoordinator: CoordinatorProtocol){
        childCoordinators = childCoordinators.filter({$0 !== childCoordinator})
    }
}


protocol CoordinatorNavigatorFinishDelegate: AnyObject {
    func coordinatorDidFinish(childCoordinatro: CoordinatorProtocol)
}

protocol TabBarCoordinator: AnyObject, CoordinatorProtocol {
    var tabBarController: UITabBarController? {get set}
}

class Coordinator: CoordinatorProtocol {
    var childCoordinators: [CoordinatorProtocol]
    var type: coordinatorType
    var navigationController: UINavigationController?
    var finishDelegate: (CoordinatorNavigatorFinishDelegate)?
    
    init(childCoordinators: [CoordinatorProtocol] = [CoordinatorProtocol](), type: coordinatorType, navigationController: UINavigationController, finishDelegate: (CoordinatorNavigatorFinishDelegate)? = nil) {
        self.childCoordinators = childCoordinators
        self.type = type
        self.navigationController = navigationController
        self.finishDelegate = finishDelegate
    }
    
    deinit {
        print("Coordinator deinited\(type)")
        childCoordinators.forEach { $0.finishDelegate = nil }
        childCoordinators.removeAll()
    }
    func start() {
        print("Coordinator start")
    }
    
    func finish() {
        print("Coordinator finish")
    }
    
    
}
