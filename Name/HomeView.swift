//
//  HomeView.swift
//  Name
//
//  Created by YutaTadachi on 2015/09/18.
//  Copyright © 2015年 yuta-t. All rights reserved.
//

import UIKit

class HomeView: UIView, EditVCDelegate {
    let nameLabel: UILabel
    let transitButton: UIButton

    required init() {
        nameLabel = UILabel()
        transitButton = UIButton()
        
        super.init(frame: CGRectZero)
        addSubview(nameLabel)
        addSubview(transitButton)
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        backgroundColor = UIColor.whiteColor()
    
        print(frame)
        nameLabel.frame.size = CGSize(width: 200, height: 20)
        nameLabel.center = CGPoint(x: center.x, y: center.y / 2)
        nameLabel.textAlignment = .Center
        nameLabel.text = "No name"
        print(nameLabel.frame)
        
        transitButton.frame.size = CGSize(width: 100, height: 20)
        transitButton.center = center
        transitButton.setTitle("名前を変更", forState: .Normal)
        transitButton.setTitleColor(UIColor.blackColor(), forState: .Normal)
        transitButton.setTitleColor(UIColor.grayColor(), forState: .Highlighted)
        print(transitButton.frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
