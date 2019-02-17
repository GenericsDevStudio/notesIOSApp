//
//  AddNoteViewController.swift
//  Notes
//
//  Created by Yehor on 2/6/19.
//  Copyright © 2019 Generics. All rights reserved.
//

import UIKit

class AddNoteViewController: UIViewController {

    @IBOutlet weak var titleLabel: UITextField!
    @IBOutlet weak var contentField: UITextView!
    @IBOutlet weak var okayButton: UIBarButtonItem!
    
    var item: Note?
    var identifier: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if item != nil && identifier! != nil {
            titleLabel.text = item!.title
            contentField.text = item!.content
            okayButton.title = "Done"
        } else {
            
        }
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if okayButton.title != "Done" {
            let title = titleLabel.text ?? ""
            let content = contentField.text ?? ""
            addNote(item: Note("0", title, content, ""))
        } else {
            let title = titleLabel.text ?? ""
            let content = contentField.text ?? ""
            //notesList[identifier!] = Note(title, content, "")
            updateNote(identifier!, title, content)
        }
    }
}
