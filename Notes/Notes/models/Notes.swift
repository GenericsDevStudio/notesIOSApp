//
//  Model.swift
//  Notes
//
//  Created by Yehor on 2/5/19.
//  Copyright © 2019 Generics. All rights reserved.
//

import Foundation

var notesList: [Note] = [Note("0", "Купить хлеба", "Купить хлеба", "11.02.19")]

func addNote(item: Note) {
    notesList.append(item)
    SendAddNoteQuery((currentUser?.id)!, item.title, item.content) { result in print("Success")}
}

func removeNote(at index: Int) {
    let id = notesList[index].noteid
    notesList.remove(at: index)
    print("noteID: \(id)")
    SendDeleteNoteQuery(id) { result in print("Success") }
}

func updateNote(_ identifier: Int, _ title: String, _ content: String) {
    notesList[identifier].title = title
    notesList[identifier].content = content
    let id = notesList[identifier].noteid
    print("noteID: \(id)")
    SendUpdateNoteQuery(id, title, content) { result in print("Success")}
}

class Note: Decodable {
    var noteid: String
    var title: String
    var content: String
    var lastChange: String
    init(_ noteid: String, _ title: String, _ content: String, _ lastChange: String) {
        self.noteid = noteid
        self.title = title
        self.content = content
        self.lastChange = lastChange
    }
}
