//
//  HomeFeedController.swift
//  AutoLayoutThroughExtensionsExample
//
//  Created by Marcus Vinícius on 24/09/19.
//  Copyright © 2019 Marcus Vinícius. All rights reserved.
//

import UIKit

class HomeFeedController: UIViewController {
    private let purpleView: UIView = {
        let view = UIView()
        view.backgroundColor = .purple
        
        return view
    }()
    
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
    
    private let cyanView: UIView = {
        let view = UIView()
        view.backgroundColor = .cyan
        
        return view
    }()
    
    private let orangeView: UIView = {
        let view = UIView()
        view.backgroundColor = .orange
        
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
        view.addSubviews([purpleView, redView, greenView, blueView, cyanView, orangeView])
        
        // Constraints for purpleView.
//        purpleView.anchor(
//            top: view.safeAreaLayoutGuide.topAnchor,
//            leading: view.safeAreaLayoutGuide.leadingAnchor,
//            bottom: nil,
//            trailing: nil,
//            padding: UIEdgeInsets(top: 12.0, left: 12.0, bottom: 0.0, right: 0.0),
//            size: CGSize(width: 231.0, height: 231.0)
//        )
        purpleView.anchor(
            top: view.safeAreaLayoutGuide.topAnchor,
            leading: view.safeAreaLayoutGuide.leadingAnchor,
            bottom: nil,
            trailing: nil,
            padding: UIEdgeInsets(top: 12.0, left: 12.0, bottom: 0.0, right: 0.0),
            size: CGSize(width: 231.0, height: 231.0)
        )
        
        // Constraints for redView.
        redView.anchor(
            top: view.safeAreaLayoutGuide.topAnchor,
            leading: purpleView.trailingAnchor,
            bottom: nil,
            trailing: nil,
            padding: UIEdgeInsets(top: 12.0, left: 12.0, bottom: 0.0, right: 0.0),
            size: CGSize(width: 109, height: 109)
        )
        
        // Constraints for greenView.
        greenView.anchor(
            top: redView.bottomAnchor,
            leading: purpleView.trailingAnchor,
            bottom: nil,
            trailing: nil,
            padding: UIEdgeInsets(top: 12.0, left: 12.0, bottom: 0.0, right: 0.0),
            size: CGSize(width: 109, height: 109)
        )

        // Constraints for blueView.
        blueView.anchor(
            top: purpleView.bottomAnchor,
            leading: view.safeAreaLayoutGuide.leadingAnchor,
            bottom: nil,
            trailing: nil,
            padding: UIEdgeInsets(top: 12.0, left: 12.0, bottom: 0.0, right: 0.0),
            size: CGSize(width: 109.0, height: 109.0)
        )

        // Constraints for cyanView.
        cyanView.anchor(
            top: purpleView.bottomAnchor,
            leading: blueView.trailingAnchor,
            bottom: nil,
            trailing: nil,
            padding: UIEdgeInsets(top: 12.0, left: 12.0, bottom: 0.0, right: 0.0),
            size: CGSize(width: 109.0, height: 109.0)
        )
        
        // Constraints for orangeView.
        orangeView.anchor(
            top: greenView.bottomAnchor,
            leading: cyanView.trailingAnchor,
            bottom: nil,
            trailing: nil,
            padding: UIEdgeInsets(top: 12.0, left: 12.0, bottom: 0.0, right: 0.0),
            size: CGSize(width: 109.0, height: 109.0)
        )
    }
}
