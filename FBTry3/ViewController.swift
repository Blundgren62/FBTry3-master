//
//  ViewController.swift
//  FBTry3
//
//  Created by Bent Lundgren on 03/04/2019.
//  Copyright © 2019 Bent Lundgren. All rights reserved.
//

import UIKit
import Firebase


class ViewController: UIViewController {
    
    @IBOutlet weak var FirebaseLabel: UILabel!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let db = Firestore.firestore()
 
        // Add a new document with a generated ID
        var ref: DocumentReference? = nil
        ref = db.collection("users").addDocument(data: [
            "first": "Alan",
            "middle": "Mathison",
            "last": "Turing",
            "born": 1912
        ]) { err in
            if let err = err {
                print("Error adding document: \(err)")
            } else {
                print("Document added with ID: \(ref!.documentID)")
            }
        }
        
        db.collection("users").getDocuments { (QuerySnapshot, err) in
            if let err = err {
                print("error getting documents: \(err)")
            }else {
                for document in QuerySnapshot!.documents {
                    print("\(document.documentID) => \(document.data())")
                    self.FirebaseLabel.text = "\(document.data())"
                    print("Det virker")
                }
            }
        }

    }

}

