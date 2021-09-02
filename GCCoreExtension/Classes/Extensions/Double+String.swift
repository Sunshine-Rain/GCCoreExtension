//
//  Double+String.swift
//  cmsApp
//
//  Created by quan on 2021/8/31.
//

import Foundation

extension Double {
    public enum BreakMode {
        case round
        case cut
    }
    
    public func toString(precision: UInt = 2, mode: BreakMode = .cut) -> String {
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
