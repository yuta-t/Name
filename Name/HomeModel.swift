//
//  HomeModel.swift
//  Name
//
//  Created by YutaTadachi on 2015/09/20.
//  Copyright © 2015年 yuta-t. All rights reserved.
//

import UIKit

class HomeModel: NSObject {
    func nameShouldGet(text: String?) -> String? {
        if text == "No name" {
            return nil
        } else {
            return text
        }
    }
    
    func nameShouldSet(name: String?) -> String {
        if let name = name {
            return name
        } else {
            return "No name"
        }
    }
}
