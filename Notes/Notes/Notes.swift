//
//  Model.swift
//  Notes
//
//  Created by Yehor on 2/5/19.
//  Copyright © 2019 Generics. All rights reserved.
//

import Foundation

var notesList: [Note] = [Note(0, "Купить хлеба", "Пару буханок")]

func addNote(item: Note) {
    notesList.append(item)
}

func removeNote(at index: Int) {
    notesList.remove(at: index)
}

class Note {
    var identifier: Int = 0
    var title: String
    var content: String
    
    init(_ identifier: Int, _ title: String, _ content: String) {
        self.identifier = identifier
        self.title = title
        self.content = content
    }
}
