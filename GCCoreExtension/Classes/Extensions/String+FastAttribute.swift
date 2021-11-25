//
//  String+FastAttribute.swift
//  cmsApp
//
//  Created by quan on 2021/8/18.
//

import Foundation

public extension String {
    func makeAttribute() -> NSMutableAttributedString {
        return NSMutableAttributedString(string: self)
    }
    
    func addFontAttribute(_ font: UIFont, range: NSRange? = nil) -> NSMutableAttributedString {
        let retStr = NSMutableAttributedString(string: self)
        retStr.addAttribute(.font, value: font, range: safeRange(range))
        return retStr
    }
    
    func addForegroundColorAttribute(_ color: UIColor, range: NSRange? = nil) -> NSMutableAttributedString {
        let retStr = NSMutableAttributedString(string: self)
        retStr.addAttribute(.foregroundColor, value: color, range: safeRange(range))
        return retStr
    }
    
    func addBackgroundColorAttribtue(_ color: UIColor, range: NSRange? = nil) -> NSMutableAttributedString {
        let retStr = NSMutableAttributedString(string: self)
        retStr.addAttribute(.backgroundColor, value: color, range: safeRange(range))
        
        return retStr
    }
    
    func addParaStyleAttribtue(_ paraStyle: NSParagraphStyle, range: NSRange? = nil) -> NSMutableAttributedString {
        let retStr = NSMutableAttributedString(string: self)
        retStr.addAttribute(.paragraphStyle, value: paraStyle, range: safeRange(range))
        return retStr
    }
    
    func addAttributes(_ attrs: [NSAttributedString.Key : Any], range: NSRange) -> NSMutableAttributedString {
        let retStr = NSMutableAttributedString(string: self)
        retStr.addAttributes(attrs, range: safeRange(range))
        return retStr
    }
    
    func safeRange(_ range: NSRange?) -> NSRange {
        guard let range = range,
              range.location + range.length <= count else {
            return NSMakeRange(0, count)
        }
        return range
    }
}
