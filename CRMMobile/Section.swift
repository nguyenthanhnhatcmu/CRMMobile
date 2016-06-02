//
//  Section.swift
//  CRMMobile
//
//  Created by Thanh Nhat on 6/2/16.
//  Copyright © 2016 Thanh Nhat. All rights reserved.
//

import UIKit

struct Section {

    var heading : String
    var items : [String]
    
    init(titile : String, objects : [String]) {
        self.heading = titile
        self.items = objects
    }
}
