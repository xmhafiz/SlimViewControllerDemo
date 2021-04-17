//
//  UIViewExtension.swift
//  NewsSampleApps
//
//  Created by Hafiz on 17/04/2021.
//

import UIKit

extension UIView {
    func pinToEdges(constant: CGFloat = 0, inView superview: UIView) {
        superview.addSubview(self)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.topAnchor.constraint(equalTo: superview.topAnchor, constant: constant).isActive = true
        self.bottomAnchor.constraint(equalTo: superview.bottomAnchor, constant: constant).isActive = true
        self.leadingAnchor.constraint(equalTo: superview.leadingAnchor, constant: constant).isActive = true
        self.trailingAnchor.constraint(equalTo: superview.trailingAnchor, constant: constant).isActive = true
    }
}
