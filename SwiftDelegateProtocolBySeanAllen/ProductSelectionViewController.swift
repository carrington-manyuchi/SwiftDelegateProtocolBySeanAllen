//
//  ProductSelectionViewController.swift
//  SwiftDelegateProtocolBySeanAllen
//
//  Created by Manyuchi, Carrington C on 2024/05/15.
//

import UIKit

class ProductSelectionViewController: UIViewController {
    
    private let iPhoneButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.configuration = .tinted()
        button.configuration?.title = "iPhone"
        button.configuration?.image = UIImage(systemName: "iPhone")
        button.configuration?.imagePadding = 8
        button.configuration?.baseBackgroundColor = .systemBlue
        button.configuration?.baseForegroundColor = .systemBlue
        return button
    }()
    
    private let iPadButton:  UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.configuration = .tinted()
        button.configuration?.title = "iPad"
        button.configuration?.image = UIImage(systemName: "iPad")
        button.configuration?.imagePadding = 8
        button.configuration?.baseBackgroundColor = .systemTeal
        button.configuration?.baseForegroundColor = .systemTeal
        return button
    }()
    
    private let macBookButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.configuration = .tinted()
        button.configuration?.title = "MacBook Pro"
        button.configuration?.image = UIImage(systemName: "laptopcomputer")
        button.configuration?.imagePadding = 8
        button.configuration?.baseBackgroundColor = .systemIndigo
        button.configuration?.baseForegroundColor = .systemIndigo
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        configureConstraints()
    }
    
    @objc func iPhoneButtonTapped() {
        dismiss(animated: true)
    }
    
    @objc func iPadButtonTapped() {
        dismiss(animated: true)
    }
    
    @objc func macBookButtonTapped() {
        dismiss(animated: true)
    }
    
    private func setupUI() {
        view.addSubview(iPhoneButton)
        view.addSubview(iPadButton)
        view.addSubview(macBookButton)
        view.backgroundColor = .systemBackground
        
        iPhoneButton.addTarget(self, action: #selector(iPhoneButtonTapped), for: .touchUpInside)
        iPadButton.addTarget(self, action: #selector(iPadButtonTapped), for: .touchUpInside)
        macBookButton.addTarget(self, action: #selector(macBookButtonTapped), for: .touchUpInside)
    }
    
    
    private  func configureConstraints() {
        
        let padding: CGFloat = 20
        
        let iPhoneButtonConstraints = [
            iPhoneButton.bottomAnchor.constraint(equalTo: iPadButton.topAnchor, constant: -padding),
            iPhoneButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            iPhoneButton.heightAnchor.constraint(equalToConstant: 50),
            iPhoneButton.widthAnchor.constraint(equalToConstant: 280),
        ]
        
        let iPadButtonConstraints = [
            iPadButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            iPadButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            iPadButton.heightAnchor.constraint(equalToConstant: 50),
            iPadButton.widthAnchor.constraint(equalToConstant: 280),
        ]
        
        let macBookButtonConstraints = [
            macBookButton.topAnchor.constraint(equalTo: iPadButton.bottomAnchor, constant: padding),
            macBookButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            macBookButton.widthAnchor.constraint(equalToConstant: 280),
            macBookButton.heightAnchor.constraint(equalToConstant: 50)
        ]
        
        NSLayoutConstraint.activate(iPhoneButtonConstraints)
        NSLayoutConstraint.activate(iPadButtonConstraints)
        NSLayoutConstraint.activate(macBookButtonConstraints)
    }

}
