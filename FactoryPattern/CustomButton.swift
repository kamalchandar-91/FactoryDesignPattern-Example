//
//  CustomButton.swift
//  FactoryPattern
//
//  Created by kamal chandar on 20/03/25.
//

import UIKit

class CustomButton: UIButton {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButton()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupButton()
    }
    
    private func setupButton() {
        let configButton = UIImage.SymbolConfiguration(pointSize: 20, weight: .medium)
        let image = UIImage(systemName: "xmark", withConfiguration: configButton)
        setImage(image, for: .normal)
        tintColor = .black
        translatesAutoresizingMaskIntoConstraints = false
    }
}
