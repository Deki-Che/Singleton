//
//  UserInfoManagerCenter.swift
//  Singleton
//
//  Created by Deki on 15/11/12.
//  Copyright © 2015年 Deki. All rights reserved.
//

import UIKit

class UserInfoManagerCenter: NSObject {
    var name:String?
    var age: Int?
    private init(name:String, age:Int) {
        self.name = name
        self.age = age
    }
    
    static let managerCenter = UserInfoManagerCenter(name: "小车", age: 20)
    
    
    class func getManagerCenter() -> UserInfoManagerCenter {
        return managerCenter
    }
    
    
}
