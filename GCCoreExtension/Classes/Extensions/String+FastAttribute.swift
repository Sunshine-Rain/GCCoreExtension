//
//  String+FastAttribute.swift
//  cmsApp
//
//  Created by quan on 2021/8/18.
//

import Foundation

extension String {
    func makeAttribute() -> NSMutableAttributedString {
        return NSMutableAttributedString(string: self)
    }
    
    func addFontAttribte(_ font: UIFont, range: NSRange? = nil) -> NSMutableAttributedString {
        let retStr = NSMutableAttributedString(string: self)
        retStr.addAttribute(.font, value: font, range: safeRange(range))
        return retStr
    }
    
    func addForegroundColorAttribte(_ color: UIColor, range: NSRange? = nil) -> NSMutableAttributedString {
        let retStr = NSMutableAttributedString(string: self)
        retStr.addAttribute(.foregroundColor, value: color, range: safeRange(range))
        return retStr
    }
    
    func addBackgroundColorAttribte(_ color: UIColor, range: NSRange? = nil) -> NSMutableAttributedString {
        let retStr = NSMutableAttributedString(string: self)
        retStr.addAttribute(.backgroundColor, value: color, range: safeRange(range))
        
        return retStr
    }
    
    func addFontAttribte(_ paraStyle: NSParagraphStyle, range: NSRange? = nil) -> NSMutableAttributedString {
        let retStr = NSMutableAttributedString(string: self)
        retStr.addAttribute(.paragraphStyle, value: paraStyle, range: safeRange(range))
        return retStr
    }
    
    func addAttributes(_ attrs: [NSAttributedString.Key : Any], range: NSRange) -> NSMutableAttributedString {
        let retStr = NSMutableAttributedString(string: self)
        retStr.addAttributes(attrs, range: safeRange(range))
        return retStr
    }
    
    private func safeRange(_ range: NSRange?) -> NSRange {
        guard let range = range,
              range.location + range.length <= count else {
            return NSMakeRange(0, count)
        }
        return range
    }
}
