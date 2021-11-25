//
//  UITableViewCell+ReuseIdentfier.swift
//  GCCoreExtension
//
//  Created by quan on 2021/11/24.
//

import UIKit

public extension UITableViewCell {
    static var cReuseID: String {
        return pureClassName(cls: self)
    }
}
