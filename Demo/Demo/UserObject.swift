//
//  UserObject.swift
//  
//
//  Created by ZackTvZ on 09/01/2017.
//
//

import UIKit

class UserObject: NSObject {
    
    dynamic var userID:NSString = "12"
    var userName:String = "32"
    var userAvatar:UIImage = UIImage()
    var friend:UserObject?
    var friends:[UserObject]?
    
}
