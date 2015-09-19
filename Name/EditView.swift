//
//  EditView.swift
//  Name
//
//  Created by YutaTadachi on 2015/09/18.
//  Copyright © 2015年 yuta-t. All rights reserved.
//

import UIKit

protocol EditViewDelegate: class {
    func changeLabel(text: String)
}

class EditView: UIView {
    var delegate: EditViewDelegate?
    
    let promptLabel: UILabel
    let nameTextField: UITextField
    let editButton: UIButton
    
    required init() {
        promptLabel = UILabel()
        nameTextField = UITextField()
        editButton = UIButton()
        
        super.init(frame: CGRectZero)
        addSubview(promptLabel)
        addSubview(nameTextField)
        addSubview(editButton)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        backgroundColor = UIColor.whiteColor()
        
        promptLabel.frame.size = CGSize(width: 200, height: 20)
        promptLabel.center = CGPoint(x: center.x, y: center.y / 2 - 20)
        promptLabel.text = "名前を入力してください"
        
        nameTextField.frame.size = CGSize(width: 100, height: 20)
        nameTextField.center = CGPoint(x: center.x, y: center.y / 2 + 20)
        nameTextField.layer.borderWidth = 1
        nameTextField.layer.borderColor = UIColor.lightGrayColor().CGColor
        nameTextField.layer.cornerRadius = 2
        
        editButton.frame.size = CGSize(width: 100, height: 20)
        editButton.center = center
        editButton.setTitle("変更", forState: .Normal)
        editButton.setTitleColor(UIColor.blackColor(), forState: .Normal)
        editButton.setTitleColor(UIColor.grayColor(), forState: .Highlighted)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
