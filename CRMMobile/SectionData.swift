//
//  SectionData.swift
//  CRMMobile
//
//  Created by Thanh Nhat on 6/2/16.
//  Copyright © 2016 Thanh Nhat. All rights reserved.
//

import UIKit


class SectionData {

    func getSectionFromData() -> [Section] {
        var sectionsArray = [Section]()
        
        let animals = Section(titile: "Animals", objects: ["Cats", "Dogs", "Birds", "Lions"])
        let vehicles = Section(titile: "Vehicles", objects: ["Cars", "Boats", "Planes", "Motorcycles", "Trucks"])
        let movies = Section(titile: "Movies", objects: ["Blade Runner", "Mad Max", "Transcendent Man", "Jurassic World"])
        
        
        sectionsArray.append(animals)
        sectionsArray.append(vehicles)
        sectionsArray.append(movies)
        
        return sectionsArray
    }


}
