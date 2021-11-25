//
//  UIView+Corners.swift
//  GCCoreExtension
//
//  Created by quan on 2021/11/24.
//

import UIKit

public extension UIView {
    @discardableResult
    func addCorners(corners: UIRectCorner, radii: CGSize) -> CALayer {
        return self.addCorners(corners: corners, bounds: self.bounds, radii: radii)
    }
    
    @discardableResult
    func addCorners(corners: UIRectCorner, bounds: CGRect, radii: CGSize) -> CALayer {
        let path = UIBezierPath.init(roundedRect: bounds, byRoundingCorners: corners, cornerRadii: radii)
        let maskLayer = CAShapeLayer.init()
        maskLayer.frame = self.bounds
        maskLayer.backgroundColor = UIColor.clear.cgColor
        maskLayer.path = path.cgPath
        self.layer.mask = maskLayer
        return maskLayer
    }
    
    func addCorners(rad: CGFloat) {
        self.layer.masksToBounds = true
        self.layer.cornerRadius = rad
    }
    
    func removeCorners() {
        self.layer.cornerRadius = 0.0
        self.layer.mask = nil
    }
    
    
    func addBorder(width: CGFloat, color: UIColor) {
        self.layer.masksToBounds = true
        self.layer.borderColor = color.cgColor
        self.layer.borderWidth = width
    }
    
    func removeBorder() {
        self.layer.masksToBounds = true
        self.layer.borderColor = UIColor.clear.cgColor
        self.layer.borderWidth = 0.0
    }
}
