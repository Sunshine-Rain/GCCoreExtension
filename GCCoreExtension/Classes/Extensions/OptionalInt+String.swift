//
//  Int+String.swift
//  cmsApp
//
//  Created by quan on 2021/8/30.
//

import Foundation

extension Optional where Wrapped == Int {
    func toString(dftVal: String = "--") -> String {
        return self != nil ? String(self!) : dftVal
    }
    
    func toStringFailable() -> String? {
        return self != nil ? String(self!) : nil
    }
}
