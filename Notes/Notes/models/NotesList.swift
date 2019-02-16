//
//  NotesList.swift
//  Notes
//
//  Created by Yehor on 2/10/19.
//  Copyright © 2019 Generics. All rights reserved.
//

import Foundation

class NotesList: Decodable {
    var notes: [Note]
    init(notes: [Note]) {
        self.notes = notes
    }
}
