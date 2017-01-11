//
//  CasToDictionaryExtension.swift
//  CasToDictionary
//
//  Created by ZackTvZ on 11/01/2017.
//  Copyright © 2017 ZackTvZ. All rights reserved.
//

import UIKit


extension NSObject{
    
    func castToDictionary() -> NSMutableDictionary{
        let objectDIC: NSMutableDictionary = NSMutableDictionary()
        let mirror =  Mirror(reflecting: self)
        print(mirror)
        for child in mirror.children {
            guard let key = child.label else { continue }
            
            let value = child.value as Any
            
            switch value {
            case is Data:
                break
            case is UIImage:
                break
            case is Collection:
                let objects = child.value as! Array<Any>
                objectDIC.setValue(objects.castToDictionary(), forKey: key)
                break;
            case is String:
                objectDIC.setValue(child.value, forKey: key)
                break
            case is Int:
                objectDIC.setValue(child.value, forKey: key)
                break
            case is NSDictionary:
                objectDIC.setValue(child.value, forKey: key)
                break
            case is NSObject:
                let object = child.value as! NSObject
                objectDIC.setValue(object.castToDictionary(), forKey: key)
                break
            default:
                break
            }
        }
        return objectDIC
    }
}


extension Collection{
    
    func castToDictionary() -> [Any]{
        var objectDICs: [Any] = []
        
        for object in self{
            let value = object as Any
            
            switch value {
            case is Collection:
                let objects = value as! Self
                objectDICs.append(objects.castToDictionary())
                break;
                
            case is NSDictionary:
                objectDICs.append(value)
                break
            case is NSObject:
                let object = value as! NSObject
                objectDICs.append(object.castToDictionary())
                break
            default:
                break
            }
        }
        
        return objectDICs
    }
}

class CasToDictionaryExtension: NSObject {

}
