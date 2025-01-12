//
//  AppCoordinator.swift
//  FoodDeliveryApp
//
//  Created by Надежда Капацина on 12.01.2025.
//

import UIKit

class AppCoordinator: Coordinator {

    
    override func start() {
        showOnboardingFlow()
    }
    
    override func finish() {
        print("AppCoordinator finish")
    }
}

// MARK: - Navigation methods
private extension AppCoordinator {
    func showOnboardingFlow() {
        guard let navigationController = navigationController else {return}
        let onboardingCoordinator = OnboardingCoordinator(type: .onboarding, navigationController: navigationController, finishDelegate: self)
        addChildCoordinator(onboardingCoordinator)
        onboardingCoordinator.start()
    }
    func showMainFlow() {
        
    }
}
extension AppCoordinator: CoordinatorNavigatorFinishDelegate {
    func coordinatorDidFinish(childCoordinatro: any CoordinatorProtocol) {
        removeChildCoordinator(childCoordinatro)
        
        switch childCoordinatro.type {
        case .app:
            return
        default:
            navigationController?.popViewController(animated: false)
        }
    }
}
