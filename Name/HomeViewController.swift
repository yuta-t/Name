//
//  ViewController.swift
//  Name
//
//  Created by YutaTadachi on 2015/09/18.
//  Copyright © 2015年 yuta-t. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func loadView() {
        view = HomeView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let homeView = view as! HomeView
        homeView.transitButton.addTarget(self, action: "transitToEdit:", forControlEvents: .TouchUpInside)
    }

    func transitToEdit(sender: UIButton) {
        performSegueWithIdentifier("EditModal", sender: sender)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let homeView = view as! HomeView
        if let editVC = segue.destinationViewController as? EditViewController {
            let editView = editVC.view as! EditView
            editView.delegate = homeView
            
            editView.name = homeView.name
        }
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

