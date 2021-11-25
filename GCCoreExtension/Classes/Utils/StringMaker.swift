//
//  StringMaker.swift
//  GCCoreExtension
//
//  Created by quan on 2021/11/24.
//

import Foundation

open class StringMaker {
    public static var defVal = "--"
}

public extension StringMaker {
    static func string(from val: Int?, dftWhileNil: String = StringMaker.defVal) -> String {
        if let v = val {
            return String(v)
        }
        return dftWhileNil
    }
    
    static func string(from val: Double?, divideBy: Double = 1.0, precision: UInt = 2, mode: Double.BreakMode = .round, dftWhileNil: String = StringMaker.defVal) -> String {
        if let v = val {
            assert(divideBy != 0.0, "Divide By Zero.")
            return (v/divideBy).toString(precision: precision, mode: mode)
        }
        return dftWhileNil
    }
}
