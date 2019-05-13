//
//  AddThrougthVC.swift
//  FBTry3
//
//  Created by Bent Lundgren on 13/05/2019.
//  Copyright © 2019 Bent Lundgren. All rights reserved.
//

import UIKit

class AddThrougthVC: UIViewController {

    // Outlets
    
    @IBOutlet weak var CategorySegment: UISegmentedControl!
    @IBOutlet weak var UsernameTxt: UITextField!
    @IBOutlet weak var ThoughtTxt: UITextView!
    @IBOutlet weak var postBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        postBtn.layer.cornerRadius = 4
        ThoughtTxt.layer.cornerRadius = 4
        ThoughtTxt.text = "Det virker meget godt"
        ThoughtTxt.textColor = .lightGray
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func categoryChanged(_ sender: Any) {
    }
    
    
    @IBAction func postBtnTapped(_ sender: Any) {
    }
    
    
}
