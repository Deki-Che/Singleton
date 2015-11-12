//
//  ViewController.swift
//  Singleton
//
//  Created by Deki on 15/11/12.
//  Copyright © 2015年 Deki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // 单例模式 bar 的模式
       // UIApplication.sharedApplication().statusBarStyle = .Default
        
      //  NSNotificationCenter.defaultCenter().addObserver(<#T##observer: AnyObject##AnyObject#>, selector: <#T##Selector#>, name: <#T##String?#>, object: <#T##AnyObject?#>)
        
       // NSUserDefaults.standardUserDefaults().setObject(<#T##value: AnyObject?##AnyObject?#>, forKey: <#T##String#>)
        
       // NSFileManager.defaultManager()
        let  center = UserInfoManagerCenter.getManagerCenter()
        print("她有一个美丽的名字叫 \(center.name!),  她今年 \(center.age!) 岁了～")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

