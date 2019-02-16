//
//  User.swift
//  Notes
//
//  Created by Yehor on 2/16/19.
//  Copyright © 2019 Generics. All rights reserved.
//

import Foundation

class User: Decodable {
    var id: Int
    var email: String
    var password: String
    init(_ id: Int, _ email: String, _ password: String) {
        self.id = id
        self.email = email
        self.password = password
    }
}
