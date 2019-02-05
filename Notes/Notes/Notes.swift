//
//  Model.swift
//  Notes
//
//  Created by Yehor on 2/5/19.
//  Copyright © 2019 Generics. All rights reserved.
//

import Foundation

var notesList: [String] = ["1", "2"]

func addNote(title: String) {
    notesList.append(title)
}

func removeNote(at index: Int) {
    notesList.remove(at: index)
}
