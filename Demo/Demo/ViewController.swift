//
//  ViewController.swift
//  Demo
//
//  Created by ZackTvZ on 11/01/2017.
//  Copyright © 2017 ZackTvZ. All rights reserved.
//

import UIKit
import CasToDictionary

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        let userObject = UserObject()
        userObject.userID = "1"
        userObject.userName = "user1"
        
        let user2Object = UserObject()
        user2Object.userID = "2"
        user2Object.userName = "user2"
        
        let friendObject = UserObject()
        friendObject.userID = "friend1"
        friendObject.userName = "friend1 name"
        userObject.friend = friendObject
        
        let friend2Object = UserObject()
        friend2Object.userID = "friend2"
        friend2Object.userName = "friend2 name"
        
        userObject.friends = [friendObject, friend2Object]
        user2Object.friends = [friendObject, friend2Object]
        
        
        let object = userObject.castToDictionary()
        let array: [UserObject] = [userObject, user2Object]
        let objectArray = array.castToDictionary()
        
        print(object)
        print(objectArray)
        do {
            let data = try JSONSerialization.data(withJSONObject: objectArray, options: JSONSerialization.WritingOptions(rawValue: 0))
            let jsonString = NSString(data: data, encoding: String.Encoding.utf8.rawValue)
            print(jsonString!)
        } catch let error as NSError {
            print(error.localizedDescription)
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

