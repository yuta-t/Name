//
//  HomeView.swift
//  Name
//
//  Created by YutaTadachi on 2015/09/18.
//  Copyright © 2015年 yuta-t. All rights reserved.
//

import UIKit

class HomeView: UIView, EditViewDelegate {
    let nameLabel: UILabel
    let transitButton: UIButton

    var name: String? {
        get {
            if nameLabel.text == "No name" {
                return nil
            } else {
                return nameLabel.text
            }
        }
        
        set(name) {
            if let name = name {
                nameLabel.text = name
            } else {
                nameLabel.text = "No name"
            }
        }
    }
    
    required init() {
        nameLabel = UILabel(frame: CGRectZero)
        transitButton = UIButton(frame: CGRectZero)
        
        super.init(frame: CGRectZero)
        addSubview(nameLabel)
        addSubview(transitButton)
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        backgroundColor = UIColor.whiteColor()
        layoutNameLabel()
        layoutTransitButton()
    }
    
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
    
    func changeName(text: String?) {
        name = text
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
