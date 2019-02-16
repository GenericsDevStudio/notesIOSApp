//
//  TransferPackage.swift
//  Notes
//
//  Created by Yehor on 2/16/19.
//  Copyright © 2019 Generics. All rights reserved.
//

import Foundation

class TransferPackage: Decodable {
    var packageId: String
    var type: String
    var date: String
    var userId: String
    var notes: [Note]
    init(_ packageId: String, _ type: String, _ date: String, _ userId: String, notes: [Note]) {
        self.packageId = packageId
        self.type = type
        self.date = date
        self.userId = userId
        self.notes = notes
    }
}
