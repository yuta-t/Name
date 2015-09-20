//
//  EditView.swift
//  Name
//
//  Created by YutaTadachi on 2015/09/18.
//  Copyright © 2015年 yuta-t. All rights reserved.
//

import UIKit

protocol EditViewDelegate: class {
    func changeName(text: String?)
}

class EditView: UIView {
    // Properties
    private let model = EditModel()
    
    weak var delegate: EditViewDelegate?
    
    let promptLabel: UILabel
    let nameTextField: UITextField
    let editButton: UIButton
    
    var name: String? {
        get {
            return model.nameShouldGet(nameTextField.text)
        }
        
        set(name) {
            nameTextField.text = name
        }
    }
    
    
    // Initializers
    required init() {
        promptLabel = UILabel(frame: CGRectZero)
        nameTextField = UITextField(frame: CGRectZero)
        editButton = UIButton(frame: CGRectZero)
        
        super.init(frame: CGRectZero)
        addSubview(promptLabel)
        addSubview(nameTextField)
        addSubview(editButton)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        backgroundColor = UIColor.whiteColor()
    
        layoutPromptLabel()
        layoutNameTextField()
        layoutEditButton()
    }

    
    // Layout Methods
    private func layoutPromptLabel() {
        promptLabel.frame.size = CGSize(width: 200, height: 20)
        promptLabel.center = CGPoint(x: center.x, y: center.y / 2 - 20)
        promptLabel.text = "名前を入力してください"
    }
    
    private func layoutNameTextField() {
        nameTextField.frame.size = CGSize(width: 100, height: 20)
        nameTextField.center = CGPoint(x: center.x, y: center.y / 2 + 20)
        nameTextField.layer.borderWidth = 1
        nameTextField.layer.borderColor = UIColor.lightGrayColor().CGColor
        nameTextField.layer.cornerRadius = 2
    }
    
    private func layoutEditButton() {
        editButton.frame.size = CGSize(width: 100, height: 20)
        editButton.center = center
        editButton.setTitle("変更", forState: .Normal)
        editButton.setTitleColor(UIColor.blackColor(), forState: .Normal)
        editButton.setTitleColor(UIColor.grayColor(), forState: .Highlighted)
    }
}
