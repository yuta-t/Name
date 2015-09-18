//
//  EditViewController.swift
//  Name
//
//  Created by YutaTadachi on 2015/09/18.
//  Copyright © 2015年 yuta-t. All rights reserved.
//

import UIKit

protocol EditVCDelegate: class {
    var nameLabel: UILabel { get }
}

class EditViewController: UIViewController {
    weak var delegate: EditVCDelegate?
    
    override func loadView() {
        view = EditView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let editView = view as! EditView
        editView.editButton.addTarget(self, action: "edit:", forControlEvents: .TouchUpInside)
    }

    
    func edit(sender: UIButton) {
        let editView = view as! EditView
        delegate?.nameLabel.text = editView.nameTextField.text
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
