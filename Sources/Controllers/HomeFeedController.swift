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
    
    private let greenView: UIView = {
        let view = UIView()
        view.backgroundColor = .green
        
        return view
    }()
    
    private let blueView: UIView = {
        let view = UIView()
        view.backgroundColor = .blue
        
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        navigationItem.title = "HOME"
        
        setupLayout()
    }
    
    private func setupLayout() {
        // Add subviews to view.
        view.addSubviews([redView, greenView, blueView])
        
        // Constraints for redView.
        redView.anchor(
            top: view.safeAreaLayoutGuide.topAnchor,
            leading: nil,
            bottom: nil,
            trailing: view.safeAreaLayoutGuide.trailingAnchor,
            padding: UIEdgeInsets(top: 16.0, left: 0.0, bottom: 0.0, right: 16.0),
            size: CGSize(width: 96.0, height: 96.0)
        )
        
        // Constraints for greenView.
        greenView.anchor(
            top: redView.bottomAnchor,
            leading: nil,
            bottom: nil,
            trailing: view.safeAreaLayoutGuide.trailingAnchor,
            padding: UIEdgeInsets(top: 16.0, left: 0.0, bottom: 0.0, right: 16.0),
            size: CGSize(width: 96.0, height: 96.0)
        )
        
        // Constraints for blueView.
        blueView.anchor(
            top: greenView.bottomAnchor,
            leading: nil,
            bottom: nil,
            trailing: view.safeAreaLayoutGuide.trailingAnchor,
            padding: UIEdgeInsets(top: 16.0, left: 0.0, bottom: 0.0, right: 16.0),
            size: CGSize(width: 96.0, height: 96.0)
        )
    }
}
