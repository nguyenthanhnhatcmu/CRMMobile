//
//  GeneralFunction.swift
//  CRMMobile
//
//  Created by Thanh Nhat on 5/31/16.
//  Copyright © 2016 Thanh Nhat. All rights reserved.
//

//
//  GeneralFunctions.swift
//  SmartPay
//
//  Created by Nguyen Ngoc Giau on 10/26/15.
//  Copyright © 2015 Smartlink. All rights reserved.
//

import UIKit
import CoreLocation


func initViewController(storyboard: String, storyid: String) -> (UIViewController) {
    let storyboard = UIStoryboard(name: storyboard, bundle: nil) ;
    let viewController = storyboard.instantiateViewControllerWithIdentifier(storyid) ;
    return viewController;
}

