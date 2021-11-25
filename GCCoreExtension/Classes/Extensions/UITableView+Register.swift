//
//  UITableView+Register.swift
//  GCCoreExtension
//
//  Created by quan on 2021/11/24.
//

import UIKit

public extension UITableView {
    func register(_ nibName: String, _ bundle: Bundle? = nil,  _ reuseIdentifier: String? = nil) {
        self.register(UINib(nibName: nibName, bundle: bundle), forCellReuseIdentifier: reuseIdentifier ?? nibName)
    }
    
    func register(_ nibClass: AnyClass) {
        let clsName = NSStringFromClass(nibClass)
        let nameSeq = clsName.split(separator: ".").last!
        let nibName = String(nameSeq)
        self.register(nibName)
    }
    
    func dequeueReusableCell<T: UITableViewCell>(with cls: T.Type, for indexPath: IndexPath) -> T {
        return self.dequeueReusableCell(withIdentifier: cls.cReuseID, for: indexPath) as! T
    }
}
