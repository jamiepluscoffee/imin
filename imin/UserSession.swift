//
//  UserSession.swift
//  imin
//
//  Created by Alexey Blinov on 13/06/2015.
//  Copyright (c) 2015 Jamie Hughes. All rights reserved.
//

import UIKit

class UserSession: NSObject
{
    static let currentSession = UserSession()
    
    let currentUser = User(id: "1", name: "Jamie", email: "hijameshughes@gmail.com")
}
