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
    case come
    case order
    case list
    case profile
}

protocol CoordinatorProtocol : AnyObject {
    var childCoordinators: [CoordinatorProtocol] { get set }
    var type: coordinatorType { get }
    var navigationController: UINavigationController? { get set }
    var finishDelegate: NavigatorFinishDelegate? { get set }
                            
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


protocol NavigatorFinishDelegate: AnyObject {
    func coordinatorDidFinish(childCoordinatro: CoordinatorProtocol)
}
