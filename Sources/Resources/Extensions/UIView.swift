//
//  UIView.swift
//  AutoLayoutThroughExtensionsExample
//
//  Created by Marcus Vinícius on 24/09/19.
//  Copyright © 2019 Marcus Vinícius. All rights reserved.
//

import UIKit

extension UIView {
    func anchor(
        top: NSLayoutYAxisAnchor,
        leading: NSLayoutXAxisAnchor,
        bottom: NSLayoutYAxisAnchor,
        trailing: NSLayoutXAxisAnchor,
        padding: UIEdgeInsets = .zero
    ) {
        // This enables autolayout to class UIView.
        self.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate(
            [
                self.topAnchor.constraint(equalTo: top, constant: padding.top),
                self.leadingAnchor.constraint(equalTo: leading, constant: padding.left),
                self.bottomAnchor.constraint(equalTo: bottom, constant: -padding.bottom),
                self.trailingAnchor.constraint(equalTo: trailing, constant: -padding.right)
            ]
        )
    }
    
    func addSubviews(_ views: [UIView]) {
        views.forEach { (view) in
            self.addSubview(view)
        }
    }
}
