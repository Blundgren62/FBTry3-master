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

        db.collection("opskrifter").addSnapshotListener { (snapshot, _) in
                guard let snapshot = snapshot else { return }
                for document in snapshot.documents {
                    print(document.data())
                }
        }
        
  /*
        // Add a new document in collection "cities"
        db.collection("opskrifter").document("Frikadeller1").setData([
            "name": "Mors frikadeller",
            "ingridiens": "Løg",
            "country": "DK"
        ]) { err in
            if let err = err {
                print("Error writing document: \(err)")
            } else {
                print("Document successfully written!")
            }
        }
    */


    }

}

