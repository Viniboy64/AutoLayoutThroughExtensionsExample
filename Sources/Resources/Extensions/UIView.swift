//
//  UIView.swift
//  AutoLayoutThroughExtensionsExample
//
//  Created by Marcus Vinícius on 24/09/19.
//  Copyright © 2019 Marcus Vinícius. All rights reserved.
//

import UIKit

extension UIView {
    func anchor(top: NSLayoutYAxisAnchor, bottom: NSLayoutYAxisAnchor, leading: NSLayoutXAxisAnchor, trailing: NSLayoutXAxisAnchor) {
        // This enables autolayout to class UIView.
        self.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate(
            [
                self.topAnchor.constraint(equalTo: top),
                self.bottomAnchor.constraint(equalTo: bottom),
                self.leadingAnchor.constraint(equalTo: leading),
                self.trailingAnchor.constraint(equalTo: trailing)
            ]
        )
    }
    
    func addSubviews(_ views: [UIView]) {
        views.forEach { (view) in
            self.addSubview(view)
        }
    }
}
