//
//  User.swift
//  imin
//
//  Created by Alexey Blinov on 13/06/2015.
//  Copyright (c) 2015 Jamie Hughes. All rights reserved.
//

import UIKit

class User: NSObject, Equatable
{
    let id: String
    let name: String
    let email: String
    
    init(id: String, name: String, email: String)
    {
        self.id = id
        self.name = name
        self.email = email
    }
}

func == (lhs: User, rhs: User) -> Bool {
    return lhs.id == rhs.id
}
