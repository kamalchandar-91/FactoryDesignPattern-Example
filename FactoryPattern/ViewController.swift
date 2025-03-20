//
//  ViewController.swift
//  FactoryPattern
//
//  Created by kamal chandar on 20/03/25.
//

import UIKit

class ViewController: UIViewController {
    
    private let factory = ScreenFactory()
    
    private lazy var homeButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Home", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 10
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(homeTapped), for: .touchUpInside)
        return button
    }()
    
    
    private lazy var settingsButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Settings", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 10
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(settingsTapped), for: .touchUpInside)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .systemBackground
        setupButtons()
    }
    
    private func setupButtons() {
        view.addSubview(homeButton)
        view.addSubview(settingsButton)
        
        NSLayoutConstraint.activate([
            homeButton.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor),
            homeButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 40),
            homeButton.widthAnchor.constraint(equalToConstant: 110),
            homeButton.heightAnchor.constraint(equalToConstant: 40)
        ])
        
        NSLayoutConstraint.activate([
            settingsButton.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor),
            settingsButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -40),
            settingsButton.widthAnchor.constraint(equalToConstant: 110),
            settingsButton.heightAnchor.constraint(equalToConstant: 40)
        ])
        
        
    }
    
    
    
    @objc private func settingsTapped() {
        let settingsVC = factory.createSettingsScreen(backgroundColor: .orange)
        self.present(settingsVC, animated: true)
        print("show settings view controller")
    }

    @objc private func homeTapped() {
        let homeVC = factory.createHomeScreen(backgroundColor: .green)
        self.present(homeVC, animated: true)
        print("show home view controller")
    }

}

