//
//  Location.swift
//  imin
//
//  Created by Alexey Blinov on 13/06/2015.
//  Copyright (c) 2015 Jamie Hughes. All rights reserved.
//

import UIKit

class Location: NSObject
{
    let name: String
    let lat: Double
    let lon: Double
    
    init(name: String, lat: Double, lon: Double)
    {
        self.name = name
        self.lat = lat
        self.lon = lon
    }
}
