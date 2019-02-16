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

func sendDataToServer() {
    /*guard let url = URL(string: "http://vasylko.zzz.com.ua/index.php/api/fd") else {
        return
    }
    let parameters = "login=Vasyl&password=Kobevko"
    var request = URLRequest(url: url)
    request.httpMethod = "POST"
    request.addValue("application/json", forHTTPHeaderField: "Content-Type")
    let httpBody = parameters.data(using: .utf8)
    request.httpBody = httpBody
    
    let session = URLSession.shared
    session.dataTask(with: request) { (data, response, error) in
        if let response = response {
            print(response)
        }
        guard let data = data else { return }
        print("data: ")
        print(data)
        do {
            let json = try JSONSerialization.jsonObject(with: data, options: [])
            print(json)
        } catch {
            print(error)
        }
    }.resume()*/
    
    let url = URL(string: "http://vasylko.zzz.com.ua/index.php/api/fd")!
    var request = URLRequest(url: url)
    request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
    request.httpMethod = "POST"
    request.addValue("application/json", forHTTPHeaderField: "Content-Type")
    
    let postString = "login=Vasyl&password=Kobevko"
    request.httpBody = postString.data(using: .utf8)
    
    let task = URLSession.shared.dataTask(with: request) { data, response, error in
        guard let data = data, error == nil else {                                                 // check for fundamental networking error
            print(error)
            return
        }
        
        if let httpStatus = response as? HTTPURLResponse, httpStatus.statusCode != 200 {           // check for http errors
            print("statusCode should be 200, but is \(httpStatus.statusCode)")
            print(response)
        }
        
        let responseString = String(data: data, encoding: .utf8)
        print(responseString)
        
        do {
            let json = try JSONSerialization.jsonObject(with: data, options: [])
            print(json)
        } catch {
            print(error)
        }
    }
    task.resume()
    
}
