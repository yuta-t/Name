//
//  HomeView.swift
//  Name
//
//  Created by YutaTadachi on 2015/09/18.
//  Copyright © 2015年 yuta-t. All rights reserved.
//

import UIKit

class HomeView: UIView, EditViewDelegate {
    // Properties
    private let model = HomeModel()
    
    let nameLabel: UILabel
    let transitButton: UIButton

    var name: String? {
        get {
            return model.nameShouldGet(nameLabel.text)
        }
        
        set(name) {
            nameLabel.text = model.nameShouldSet(name)
        }
    }
    
    
    // Initializers
    required init() {
        nameLabel = UILabel(frame: CGRectZero)
        transitButton = UIButton(frame: CGRectZero)
        
        super.init(frame: CGRectZero)
        addSubview(nameLabel)
        addSubview(transitButton)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        backgroundColor = UIColor.whiteColor()
        layoutNameLabel()
        layoutTransitButton()
    }
    
    
    // Layout Methods
    private func layoutNameLabel() {
        nameLabel.frame.size = CGSize(width: 200, height: 20)
        nameLabel.center = CGPoint(x: center.x, y: center.y / 2)
        nameLabel.textAlignment = .Center
        name = nil
    }
    
    private func layoutTransitButton() {
        transitButton.frame.size = CGSize(width: 100, height: 20)
        transitButton.center = center
        transitButton.setTitle("名前を変更", forState: .Normal)
        transitButton.setTitleColor(UIColor.blackColor(), forState: .Normal)
        transitButton.setTitleColor(UIColor.grayColor(), forState: .Highlighted)
    }
    
    
    // Delegate Method
    func changeName(text: String?) {
        name = text
    }
}
