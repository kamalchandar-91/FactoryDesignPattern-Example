//
//  ScreenFactory.swift
//  FactoryPattern
//
//  Created by kamal chandar on 20/03/25.
//

import UIKit

//Factory protocol that must returns appropriate object
//In this case we are creating Viewcontrollers that should return the object UIViewController
protocol ScreenFactoryProtocol {
    func createSettingsScreen(backgroundColor: UIColor) -> UIViewController
    func createHomeScreen(backgroundColor: UIColor) -> UIViewController
}

class ScreenFactory: ScreenFactoryProtocol {
    func createSettingsScreen(backgroundColor: UIColor) -> UIViewController {
        let settingsVC = SettingsViewController()
        settingsVC.view.backgroundColor = backgroundColor
        return settingsVC
    }
    
    func createHomeScreen(backgroundColor: UIColor) -> UIViewController {
        let homeVC = HomeViewController()
        homeVC.view.backgroundColor = backgroundColor
        return homeVC
    }
    
    
    
}
