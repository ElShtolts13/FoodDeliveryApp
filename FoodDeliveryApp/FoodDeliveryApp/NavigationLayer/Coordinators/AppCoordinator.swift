//
//  AppCoordinator.swift
//  FoodDeliveryApp
//
//  Created by Надежда Капацина on 12.01.2025.
//

import UIKit

class AppCoordinator: Coordinator {

    
    override func start() {
        //showOnboardingFlow()
        showMainFlow()
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
        guard let navigationController = navigationController else { return }
        
        let homeNavigationController = UINavigationController()
        let homeCoordinator = HomeCoordinator(type: .home, navigationController: homeNavigationController)
        homeNavigationController.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "house"), tag: 0)
        homeCoordinator.finishDelegate = self
        homeCoordinator.start()
        
        let orderNavigationController = UINavigationController()
        let orderCoordinator = OrderCoordinator(type: .order, navigationController: orderNavigationController)
        orderNavigationController.tabBarItem = UITabBarItem(title: "Order", image: UIImage(systemName: "basket"), tag: 1)
        orderCoordinator.finishDelegate = self
        orderCoordinator.start()
        
        let listNavigationController = UINavigationController()
        let listCoordinator = MyListCoordinator(type: .list, navigationController: listNavigationController)
        listNavigationController.tabBarItem = UITabBarItem(title: "My List", image: UIImage(systemName: "list.clipboard"), tag: 2)
        listCoordinator.finishDelegate = self
        listCoordinator.start()
        
        let proFileNavigationController = UINavigationController()
        let proFileCoordinator = ProfileCoordinator(type: .profile, navigationController: proFileNavigationController)
        proFileNavigationController.tabBarItem = UITabBarItem(title: "Profile", image: UIImage(systemName: "person.crop.circle"), tag: 0)
        proFileCoordinator.finishDelegate = self
        proFileCoordinator.start()
        
        
        addChildCoordinator(homeCoordinator)
        addChildCoordinator(orderCoordinator)
        addChildCoordinator(listCoordinator)
        addChildCoordinator(proFileCoordinator)
        
        
        let tabBarControllers = [homeNavigationController, orderNavigationController, listNavigationController, proFileNavigationController]
        let tabBarController = TabBarController(tabBarControllers: tabBarControllers)
        
        navigationController.pushViewController(tabBarController, animated: true)
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
