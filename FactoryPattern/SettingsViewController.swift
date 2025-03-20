//
//  SettingsViewController.swift
//  FactoryPattern
//
//  Created by kamal chandar on 20/03/25.
//

import UIKit

class SettingsViewController: UIViewController {

    private lazy var dismissButton = CustomButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupDismissButton()
        // Do any additional setup after loading the view.
    }

    private func setupDismissButton() {
        view.addSubview(dismissButton)
        dismissButton.addTarget(self, action: #selector(dismissTapped), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            dismissButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16),
            dismissButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -16)
        ])
    }

    @objc private func dismissTapped() {
        dismiss(animated: true)
    }

}
