//
//  NibLoadable.swift
//  GCCoreExtension
//
//  Created by quan on 2021/11/24.
//

import UIKit

public protocol NibLoadable {}

public extension NibLoadable where Self: UIView {
    static func loadFromNib(_ nibName: String? = nil) -> Self {
        let name = nibName ?? pureClassName(cls: self)
        return Bundle.main.loadNibNamed(name, owner: nil, options: nil)?.first as! Self
    }
}
