//
//  ViewController.swift
//  CRMMobile
//
//  Created by Thanh Nhat on 5/31/16.
//  Copyright © 2016 Thanh Nhat. All rights reserved.
//

import UIKit

class ViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func goToActivity(sender: AnyObject) {
        let activityView = initViewController("ActivityStoryboard", storyid: "ListActivityViewControllerID") as! ListActivityViewController
        self.navigationController?.pushViewController(activityView, animated: true)
    }
    
    @IBAction func goToCustomer(sender: AnyObject) {
    }
    
    @IBAction func goToContact(sender: AnyObject) {
    }
    
    @IBAction func goToDeal(sender: AnyObject) {
    }
    
    @IBAction func goToDealAttachProduct(sender: AnyObject) {
    }
    

}

