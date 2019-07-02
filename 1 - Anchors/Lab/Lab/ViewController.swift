//
//  ViewController.swift
//  Lab
//
//  Created by Jonathan Rasmusson Work Pro on 2019-07-01.
//  Copyright © 2019 Rasmusson Software Consulting. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let upperLeftLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false // important!
        label.text = "upperLeft"
        label.backgroundColor = .yellow
        
        return label
    }()

    let upperRightLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false // important!
        label.text = "upperRight"
        label.backgroundColor = .yellow
        
        return label
    }()
    
    let redView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .red
        
        return view
    }()
    
    let bigLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 30)
        label.text = "Big Label"
        
        return label
    }()
    
    let littleGrayLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 12)
        label.textColor = .gray
        label.text = "Little Gray Label"

        return label
    }()
    
    let blueButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Pay Bill", for: .normal)
        button.backgroundColor = .blue
        
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        setupViews()
    }
    
    func setupViews() {
        view.addSubview(upperLeftLabel)
        view.addSubview(upperRightLabel)
        view.addSubview(redView)
        view.addSubview(bigLabel)
        view.addSubview(littleGrayLabel)
        view.addSubview(blueButton)
        
        upperLeftLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8).isActive = true
        upperLeftLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8).isActive = true
        
        // you add
        upperRightLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8).isActive = true
        upperRightLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8).isActive = true // Note the minus sign
        
        // centered
        redView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        redView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        redView.heightAnchor.constraint(equalToConstant: 100).isActive = true
//        redView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
        // Challenge: Make the redView extend 8pts from leading and trailing edges
        redView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8).isActive = true
        redView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8).isActive = true
        
        bigLabel.topAnchor.constraint(equalTo: redView.bottomAnchor, constant: 20).isActive = true
        bigLabel.centerXAnchor.constraint(equalTo: redView.centerXAnchor).isActive = true
        
        // Challenge: Stick littleGrayLabel bottom left 8 pts leading 8 pts from bottom
        littleGrayLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8).isActive = true // safeArea optional
        littleGrayLabel.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -8).isActive = true
        
        blueButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -8).isActive = true
        blueButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8).isActive = true
    }
}

