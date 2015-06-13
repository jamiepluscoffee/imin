//
//  Activity.swift
//  imin
//
//  Created by Alexey Blinov on 13/06/2015.
//  Copyright (c) 2015 Jamie Hughes. All rights reserved.
//

import Foundation

class Activity: NSObject
{
    let name: String
    let host: User
    let location: Location
    let date: NSDate
    var attendees: [User] = []
    
    init(name: String, host: User, location: Location, date: NSDate)
    {
        self.name = name
        self.host = host
        self.location = location
        self.date = date
    }
    
    func isUserAttending(user: User) -> Bool
    {
        return contains(self.attendees, user)
    }
}
