//
//  ViewController.swift
//  GCCoreExtension
//
//  Created by 1137576021@qq.com on 09/02/2021.
//  Copyright (c) 2021 1137576021@qq.com. All rights reserved.
//

import UIKit
import GCCoreExtension

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print(DeviceInfoUtil.getDeviceModelName())
        
        
        let colors = [
            "#FFB6C1",
            "#FFC0CB",
            
            "#DC143C",
            "#FFF0F5",
            
            "#DB7093",
            "#FF69B4",
            
            "#FF1493",
            "#C71585",
            
            "#CD5C5C",
            "#BC8F8F"
        ]
        
        DispatchQueue.global().async {
            colors.forEach { color in
                Thread.sleep(forTimeInterval: 1.5)
                DispatchQueue.main.async {
                    self.view.backgroundColor = UIColor.hexString(color)
                }
            }
            
        }
        
        
        let d: Double? = nil
        StringMaker.defVal = "no value"
        print(StringMaker.string(from: d))
        print(StringMaker.string(from: 3.14))
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let vc = TableViewController()
        self.present(vc, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

