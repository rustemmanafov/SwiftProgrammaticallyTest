//
//  ViewController.swift
//  ProgrammaticallySwiftTest
//
//  Created by Rustem Manafov on 02.11.22.
//

import UIKit

class ViewController: UIViewController {
    
    
    let testButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("TestButton", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)

        return button
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red

        view.addSubview(testButton)
        
        constraint()
    }

    func constraint() {
        
        let testButtonConstraint = [
            testButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            testButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
//            testButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 150),
//            testButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 150)
        ]
        
        NSLayoutConstraint.activate(testButtonConstraint)
    }
    
    @objc func buttonTapped(_ sender: UIButton) {
        print("work")
    }
}

