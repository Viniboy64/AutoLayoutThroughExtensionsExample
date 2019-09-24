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
        redView.anchor(
            top: view.safeAreaLayoutGuide.topAnchor,
            leading: view.leadingAnchor,
            bottom: view.bottomAnchor,
            trailing: view.trailingAnchor,
            padding: UIEdgeInsets(top: 16.0, left: 16.0, bottom: 16.0, right: 16.0)
        )
    }
}
