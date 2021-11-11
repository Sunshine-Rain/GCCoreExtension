//
//  NSAtrributeString+Builder.swift
//  cmsApp
//
//  Created by quan on 2021/8/18.
//

import Foundation

public extension NSMutableAttributedString {
    @discardableResult
    func addFont(_ font: UIFont, range: NSRange? = nil) -> Self {
        addAttribute(.font, value: font, range: safeRange(range))
        return self
    }
    
    @discardableResult
    func addForegroundColor(_ color: UIColor, range: NSRange? = nil) -> Self {
        addAttribute(.foregroundColor, value: color, range: safeRange(range))
        return self
    }
    
    @discardableResult
    func addBackgroundColor(_ color: UIColor, range: NSRange? = nil) -> Self {
        addAttribute(.backgroundColor, value: color, range: safeRange(range))
        return self
    }
    
    @discardableResult
    func addParagraphStyle(_ style: NSParagraphStyle, range: NSRange? = nil) -> Self {
        addAttribute(.paragraphStyle, value: style, range: safeRange(range))
        return self
    }
    
    @discardableResult
    func safeRange(_ range: NSRange?) -> NSRange {
        guard let range = range,
              range.location + range.length <= length else {
            return NSMakeRange(0, length)
        }
        return range
    }
}
