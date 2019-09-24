//
//  HomeFeedController.swift
//  AutoLayoutThroughExtensionsExample
//
//  Created by Marcus Vinícius on 24/09/19.
//  Copyright © 2019 Marcus Vinícius. All rights reserved.
//

import UIKit

class HomeFeedController: UIViewController {
    private let redView: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        
        // This enables autolayout to view.
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "HOME"
        
        setupLayout()
    }
    
    private func setupLayout() {
        // Add subviews to view.
        view.addSubview(redView)
        
        // Constraints for redView.
        NSLayoutConstraint.activate(
            [
                redView.topAnchor.constraint(equalTo: view.topAnchor),
                redView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
                redView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                redView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
            ]
        )
    }
}
