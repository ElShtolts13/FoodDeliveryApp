//
//  ViewController.swift
//  FoodDeliveryApp
//
//  Created by Надежда Капацина on 23.09.2024.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        let label = UILabel()
        label.text = "Hello World"
        label.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(label)
        
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: view.topAnchor, constant: 200),
            label.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
            label.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 30)])
        
        label.font = .Roboto.bold.size(of: 26)
        label.textColor = .white
        
        view.backgroundColor = .purple
    }


}

