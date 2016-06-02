//
//  BaseViewController.swift
//  CRMMobile
//
//  Created by Thanh Nhat on 5/31/16.
//  Copyright © 2016 Thanh Nhat. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    let centerButton =  UIButton(type: .Custom)
    let rightbutton = UIButton(frame: CGRectMake(0, 0, 100, 40))
    let leftbutton = UIButton(frame: CGRectMake(0, 0, 100, 40))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        customNavigationBar()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func customNavigationBar () {
        //Text title center
        centerButton.frame = CGRectMake(0, 0, 100, 40) as CGRect
        centerButton.setTitle("Title Page", forState: .Normal)
        self.navigationItem.titleView = centerButton
        
        //Right Button
        let rightView = UIView(frame: CGRectMake(0, 0, 100, 44))
        rightbutton.setTitle("Next", forState: .Normal)
        rightbutton.addTarget(self, action: #selector(nextButtonAction), forControlEvents: UIControlEvents.TouchUpInside)
        rightbutton.titleLabel?.textAlignment = NSTextAlignment.Right
        
        
//        let playButton  = UIButton(type: .Custom)
//        if let image = UIImage(named: "play") {
//            rightbutton.setImage(image, forState: .Normal)
//        }
        
        
        rightView.addSubview(rightbutton)
        
        //Left Button
        let leftView = UIView(frame: CGRectMake(0, 0, 100, 44))
        leftbutton.setTitle("Back", forState: .Normal)
        leftbutton.addTarget(self, action: #selector(backButtonAction), forControlEvents: UIControlEvents.TouchUpInside)
        leftbutton.titleLabel?.textAlignment = NSTextAlignment.Right
        leftView.addSubview(leftbutton)
        
        
        let barButtonItemRight = UIBarButtonItem(customView: rightView)
        let barButtonItemLeft = UIBarButtonItem(customView: leftView)
        self.navigationItem.rightBarButtonItem = barButtonItemRight
        self.navigationItem.leftBarButtonItem = barButtonItemLeft
    }
    
    func backButtonAction(sender:UIButton!) {
        print("go Next View")
    }
    
    func nextButtonAction(sender:UIButton!) {
        print("go Back View")
    }
    
    
    
}
