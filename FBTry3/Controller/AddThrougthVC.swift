//
//  AddThrougthVC.swift
//  FBTry3
//
//  Created by Bent Lundgren on 13/05/2019.
//  Copyright © 2019 Bent Lundgren. All rights reserved.
//

import UIKit
import Firebase

class AddThrougthVC: UIViewController, UITextViewDelegate {

    // Outlets
    
    @IBOutlet weak var CategorySegment: UISegmentedControl!
    @IBOutlet weak var UsernameTxt: UITextField!
    @IBOutlet weak var ThoughtTxt: UITextView!
    @IBOutlet weak var postBtn: UIButton!
    
    // Variables
    
    private var selectedCategory = "funny"
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        postBtn.layer.cornerRadius = 4
        ThoughtTxt.layer.cornerRadius = 4
        ThoughtTxt.text = "Det virker meget godt"
        ThoughtTxt.textColor = .lightGray
        ThoughtTxt.delegate = self
        
        // Do any additional setup after loading the view.
    }
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        textView.text = ""
        textView.textColor = .darkGray
    }
    
    @IBAction func categoryChanged(_ sender: Any) {
        
    }
    
    
    @IBAction func postBtnTapped(_ sender: Any) {
        Firestore.firestore().collection("thoughts").addDocument(data: [
            "category" : selectedCategory,
            "thoughtsTxt" : ThoughtTxt.text ?? "virker ikke"
        ]) { (err) in
            if let err = err {
                debugPrint("Error adding document: \(err)")
            } else {
                self.navigationController?.popViewController(animated: true)
            }
        }
    }
    
    
}
