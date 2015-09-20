//
//  EditModel.swift
//  Name
//
//  Created by YutaTadachi on 2015/09/20.
//  Copyright © 2015年 yuta-t. All rights reserved.
//

import UIKit

class EditModel: NSObject {
    func nameShouldGet(text: String?) -> String? {
        if let text = text where text.isEmpty {
            return nil
        } else {
            return text
        }
    }
}
