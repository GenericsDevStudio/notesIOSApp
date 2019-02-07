//
//  Model.swift
//  Notes
//
//  Created by Yehor on 2/5/19.
//  Copyright © 2019 Generics. All rights reserved.
//

import Foundation

var notesList: [Note] = [Note("Купить хлеба", "Купить хлеба", "11.02.19")]

func addNote(item: Note) {
    notesList.append(item)
}

func removeNote(at index: Int) {
    notesList.remove(at: index)
}

class Note: Decodable {
    var title: String
    var content: String
    var date: String
    init(_ title: String, _ content: String, _ date: String) {
        self.title = title
        self.content = content
        self.date = date
    }
}
