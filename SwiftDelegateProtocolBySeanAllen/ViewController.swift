//
//  ViewController.swift
//  SwiftDelegateProtocolBySeanAllen
//
//  Created by Manyuchi, Carrington C on 2024/05/15.
//

import UIKit

class ViewController: UIViewController {
    
    private let productImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints =  false
        imageView.image = UIImage(named: "all-products")
        return imageView
    }()
    
    private let productNameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Apple Product Line"
        label.textAlignment  = .center
        label.font = .systemFont(ofSize: 20, weight: .medium)
        label.textColor = .darkGray
        return label
    }()
    
    private let chooseProductButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.configuration = .tinted()
        button.configuration?.title = "Choose Product"
        button.configuration?.image = UIImage(systemName: "apple.logo")
        button.configuration?.imagePadding = 8
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        configureConstraints()
    }

    @objc func presentProductsSelectionVC() {
        let destinationVC =  ProductSelectionViewController()
        destinationVC.modalPresentationStyle = .pageSheet
        destinationVC.sheetPresentationController?.detents = [.medium()]
        destinationVC.sheetPresentationController?.prefersGrabberVisible = true
        present(destinationVC, animated: true)
    }
    
    private func setupUI() {
        view.addSubview(productImageView)
        view.addSubview(productNameLabel)
        view.addSubview(chooseProductButton)
        chooseProductButton.addTarget(self, action: #selector(presentProductsSelectionVC), for: .touchUpInside)
    }
    
    
    private func configureConstraints() {
        let padding: CGFloat = 20
        
        let productImageViewConstraints = [
            productImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: padding),
            productImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            productImageView.heightAnchor.constraint(equalToConstant: 225),
            productImageView.widthAnchor.constraint(equalToConstant: 300),
        ]
        
        let productNameLabelConstraints = [
            productNameLabel.topAnchor.constraint(equalTo: productImageView.bottomAnchor, constant: padding),
            productNameLabel.centerXAnchor.constraint(equalTo: productImageView.centerXAnchor),
            productNameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: padding),
            productNameLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -padding),
        ]
        
        let chooseProductButtonConstraints = [
            chooseProductButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -padding),
            chooseProductButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            chooseProductButton.heightAnchor.constraint(equalToConstant: 50),
            chooseProductButton.widthAnchor.constraint(equalToConstant: 260)
        ]
        
        NSLayoutConstraint.activate(productImageViewConstraints)
        NSLayoutConstraint.activate(productNameLabelConstraints)
        NSLayoutConstraint.activate(chooseProductButtonConstraints)
    }
    
    

}

