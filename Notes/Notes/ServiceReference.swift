//
//  ServiceReference.swift
//  Notes
//
//  Created by Yehor on 2/7/19.
//  Copyright © 2019 Generics. All rights reserved.
//

import Foundation

var parsedNotesList: NotesList?

func getDataFromServer() {
    guard let url = URL(string: "http://www.alonesecurity.xyz/NotesServer/") else {
        return
    }
    let session = URLSession.shared
    session.dataTask(with: url) { (data, res, error ) in
        if let response = res {
            print(response)
        }
        
        guard let data = data else { return }
        print(data)
        
        do {
            let json = try JSONSerialization.jsonObject(with: data, options: [])
            print(json)
            guard let notesDataList = try? JSONDecoder().decode(NotesList.self, from: data) else {
                print("Error: Couldn't decode data into Blog")
                return
            }
            for item in notesDataList.notes {
                print(item.title)
            }
            parsedNotesList = notesDataList
            if parsedNotesList! != nil {
                notesList = parsedNotesList?.notes ?? [Note("Купить хлеба", "Купить хлеба", "11.02.19")]
            }
        } catch {
            print("No JSON")
        }
        
    }.resume()
}


class NotesList: Decodable {
    var notes: [Note]
    init(notes: [Note]) {
        self.notes = notes
    }
    
}


