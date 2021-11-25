//
//  BasicFunctions.swift
//  GCCoreExtension
//
//  Created by quan on 2021/11/24.
//

import Foundation

/// return the class name without module name
public func pureClassName(cls: AnyClass) -> String {
    let clsName = NSStringFromClass(cls)
    return String(clsName.split(separator: ".").last!)
}
