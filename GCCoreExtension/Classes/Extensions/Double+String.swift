//
//  Double+String.swift
//  cmsApp
//
//  Created by quan on 2021/8/31.
//

import Foundation

public extension Double {
    enum BreakMode {
        case round
        case cut
    }
    
    func toString(precision: UInt = 2, mode: BreakMode = .cut) -> String {
        switch mode {
        case .round:
            return String(format: "%.\(precision)f", self)
        case .cut:
            let s = String(format: "%.\(precision + 1)", self)
            let endIndex = s.index(before: s.endIndex)
            return String(s[...endIndex])
        }
    }
}
